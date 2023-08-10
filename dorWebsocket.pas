unit dorWebsocket;

interface
uses SysUtils, WinSock, dorHTTP, dorOpenSSL;

type
  TWSMessage = reference to procedure(const msg: string);
  TWSReadyState = (rsConnecting, rsOpen, rsClosing, rsClosed);

  IWebSocket = interface
    ['{A9BC9CE6-7C13-4B02-BF66-033EB0BB943E}']
    function GetReadyState: TWSReadyState;
    procedure Send(const data: string);
    procedure Close;
    procedure Open(const url: string; const origin: RawByteString = 'null');

    function GetOnOpen: TProc;
    function GetOnClose: TProc;
    function GetOnError: TWSMessage;
    function GetOnMessage: TWSMessage;
    function GetOnAddField: TOnHTTPAddField;

    procedure SetOnOpen(const value: TProc);
    procedure SetOnClose(const value: TProc);
    procedure SetOnError(const value: TWSMessage);
    procedure SetOnMessage(const value: TWSMessage);
    procedure SetOnAddField(const value: TOnHTTPAddField);

    property OnOpen: TProc read GetOnOpen write SetOnOpen;
    property OnClose: TProc read GetOnClose write SetOnClose;
    property OnError: TWSMessage read GetOnError write SetOnError;
    property OnMessage: TWSMessage read GetOnMessage write SetOnMessage;
    property OnAddField: TOnHTTPAddField read GetOnAddField write SetOnAddField;

    property ReadyState: TWSReadyState read getReadyState;
  end;

  TWebSocket = class(TInterfacedObject, IWebSocket)
  private
    FOnOpen: TProc;
    FOnClose: TProc;
    FOnError: TWSMessage;
    FOnMessage: TWSMessage;
    FOnAddField: TOnHTTPAddField;
    FReadyState: TWSReadyState;
    FSocket: TSocket;
    // SSL
    FCtx: PSSL_CTX;
    FSsl: PSSL;
    FPassword: AnsiString;
    FCertificateFile: AnsiString;
    FPrivateKeyFile: AnsiString;
    FCertCAFile: AnsiString;
    procedure Listen;
    procedure HTTPWriteLine(const data: RawByteString);
    function SockSend(var Buf; len, flags: Integer): Integer;
    function SockRecv(var Buf; len, flags: Integer): Integer;
  protected
    function getReadyState: TWSReadyState; virtual;
    procedure Send(const data: string);
    procedure Open(const url: string; const origin: RawByteString = 'null');
    procedure Close;
    function GetOnOpen: TProc;
    function GetOnClose: TProc;
    function GetOnError: TWSMessage;
    function GetOnMessage: TWSMessage;
    function GetOnAddField: TOnHTTPAddField;
    procedure SetOnOpen(const value: TProc);
    procedure SetOnClose(const value: TProc);
    procedure SetOnError(const value: TWSMessage);
    procedure SetOnMessage(const value: TWSMessage);
    procedure SetOnAddField(const value: TOnHTTPAddField);
  public
    constructor Create(const password: AnsiString = '';
      const CertificateFile: AnsiString = ''; const PrivateKeyFile: AnsiString = '';
      const CertCAFile: AnsiString = ''); virtual;
    destructor Destroy; override;
    class constructor Create;
    class destructor Destroy;
  end;

implementation

uses Classes, AnsiStrings, dorMD5, dorPunyCode, Generics.Collections;

(******************************************************************************)
(* TThreadIt                                                                  *)
(* run anonymous method in a thread                                           *)
(******************************************************************************)

type
  TThreadIt = class(TThread)
  private
    FProc: TProc;
  protected
    procedure Execute; override;
    constructor Create(const proc: TProc);
  end;

  constructor TThreadIt.Create(const proc: TProc);
  begin
    FreeOnTerminate := True;
    FProc := proc;
    inherited Create(False);
  end;

  procedure TThreadIt.Execute;
  begin
    FProc();
  end;


{$REGION 'WEBSOCKET'}

(******************************************************************************)
(* WEBSOCKET                                                                  *)
(******************************************************************************)

function WS_GenerateKeyNumber(out number: Cardinal): string;
var
  spaces, max, n, i, pos: Integer;
  product: Cardinal;
  ch: AnsiChar;
  function bigendian(c: Cardinal): Cardinal;
  var
    i: array[0..3] of Byte absolute c;
    o: array[0..3] of Byte absolute Result;
  begin
    o[0] := i[3];
    o[1] := i[2];
    o[2] := i[1];
    o[3] := i[0];
  end;
const
  RANDCHAR_SIZE = $30 - $21 + $7F - $3A;
begin
	// 16.  Let /spaces_n/ be a random integer from 1 to 12 inclusive.
  spaces := Random(12) + 1;

	// 17. Let /max_n/ be the largest integer not greater than
	//     4,294,967,295 divided by /spaces_n/
	max := Integer(4294967295 div Cardinal(spaces));

	// 18. Let /number_n/ be a random integer from 0 to /max_n/ inclusive.
	number := Random(max + 1);

	// 19. Let /product_n/ be the result of multiplying /number_n/ and
	//     /spaces_n/ together.
	product := number * Cardinal(spaces);

	// 20. Let /key_n/ be a string consisting of /product_n/, expressed
	// in base ten using the numerals in the range U+0030 DIGIT ZERO (0)
	// to U+0039 DIGIT NINE (9).
	Result := inttostr(product);

	// 21. Insert between one and twelve random characters from the ranges
	//     U+0021 to U+002F and U+003A to U+007E into /key_n/ at random
	//     positions.
	n := Random(12) + 1;
	for i := 0 to n - 1 do
  begin
		pos := Random(length(Result)) + 1;
    ch := AnsiChar(Random(RANDCHAR_SIZE) + $21);
    if ch >= '0' then
       inc(ch, 10);
    Result := Copy(Result, 1, pos) + Char(ch) + Copy(Result, pos+1, Length(Result) - pos);
		//Result := key[0:pos] + string(ch) + key[pos:]
	end;

	// 22. Insert /spaces_n/ U+0020 SPACE characters into /key_n/ at random
	//     positions other than the start or end of the string.
	for i := 0 to spaces - 1 do
  begin
		pos := Random(Length(Result)-1) + 1;
    Result := Copy(Result, 1, pos) + ' ' + Copy(Result, pos+1, Length(Result) - pos);
		//key = key[0:pos] + " " + key[pos:]
  end;
  number := bigendian(number)
end;

const
  Base64Code: string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';

function StrTobase64(Buf: string): string;
var
  i: integer;
  x1, x2, x3, x4: byte;
  PadCount: integer;
begin
  PadCount := 0;
  // we need at least 3 input bytes...
  while length(Buf) < 3 do
  begin
    Buf := Buf + #0;
    inc(PadCount);
  end;

  // ...and all input must be an even multiple of 3
  while (length(Buf) mod 3) <> 0 do
  begin
    Buf := Buf + #0; // if not, zero padding is added
    inc(PadCount);
  end;

  Result := '';
  i := 1;

  // process 3-byte blocks or 24 bits
  while i <= length(Buf) - 2 do
  begin
    // each 3 input bytes are transformed into 4 index values
    // in the range of  0..63, by taking 6 bits each step

    // 6 high bytes of first char
    x1 := (Ord(Buf[i]) shr 2) and $3F;

    // 2 low bytes of first char + 4 high bytes of second char
    x2 := ((Ord(Buf[i]) shl 4) and $3F)
      or Ord(Buf[i + 1]) shr 4;

    // 4 low bytes of second char + 2 high bytes of third char
    x3 := ((Ord(Buf[i + 1]) shl 2) and $3F)
      or Ord(Buf[i + 2]) shr 6;

    // 6 low bytes of third char
    x4 := Ord(Buf[i + 2]) and $3F;

    // the index values point into the code array
    Result := Result
      + Base64Code[x1 + 1]
      + Base64Code[x2 + 1]
      + Base64Code[x3 + 1]
      + Base64Code[x4 + 1];
    inc(i, 3);
  end;

  // if needed, finish by forcing padding chars ('=')
  // at end of string
  if PadCount > 0 then
    for i := Length(Result) downto 1 do
    begin
      Result[i] := '=';
      dec(PadCount);
      if PadCount = 0 then Break;
    end;
end;

function WS2_GenerateKey(): string;
var I: Integer;
begin
  Result := '';
  for I := 1 to 16 do Result := Result + Char(Random(85) + 32);
  Result := StrTobase64(Result);
end;

function SSLPasswordCallback(buffer: PAnsiChar; size, rwflag: Integer;
  this: TWebSocket): Integer; cdecl;
var
  password: AnsiString;
begin
  password := this.FPassword;
  if Length(password) > (Size - 1) then
    SetLength(password, Size - 1);
  Result := Length(password);
  Move(PAnsiChar(password)^, buffer^, Result + 1);
end;

{ TWebSocket }

procedure TWebSocket.Close;
begin
  if FReadyState = rsOpen then
  begin
    FReadyState := rsClosing;
    closesocket(FSocket);
    Sleep(1); // let the listen thread close
    FSocket := INVALID_SOCKET;
    FReadyState := rsClosed;
    if Assigned(FOnClose) then
      FOnClose();
  end;
  if Fssl <> nil then
  begin
    SSL_free(FSsl);
    FSsl := nil;
  end;
  if Fctx <> nil then
  begin
    SSL_CTX_free(FCtx);
    FCtx := nil;
  end;
end;

procedure TWebSocket.HTTPWriteLine(const data: RawByteString);
var
  rb: RawByteString;
begin
  rb := RawByteString(data) + #13#10;
  SockSend(PAnsiChar(rb)^, Length(rb), 0);
end;

procedure TWebSocket.Open(const url: string; const origin: RawByteString = 'null');
var
  domain: AnsiString;
  protocol: string;
  uri: RawByteString;
  ssl: Boolean;
  port: Word;
  host: PHostEnt;
  addr: TSockAddrIn;
  i: Integer;
  ReadTimeOut: Integer;
  dic: TDictionary<RawByteString, RawByteString>;
  value: RawByteString;
  challenge: packed record
    num1, num2: Cardinal;
    key3: array[0..7] of Byte;
  end;
  md5_expected, md5_returned: array[0..15] of Byte;

begin
  if FReadyState <> rsClosed then
    Exit;

  FReadyState := rsConnecting;
  // parse
  if not HTTPParseURL(PChar(url), protocol, domain, port, uri, True) then
  begin
    if Assigned(FOnError) then
      FOnError(Format('Can''t parse url: %s', [url]));
    Exit;
  end;

  if protocol = 'ws' then
  begin
    ssl := False;
    if port = 0 then
      port := 80;
  end else
    if protocol = 'wss' then
    begin
      ssl := True;
      if port = 0 then
        port := 443;
    end else
      begin
        if Assigned(FOnError) then
          FOnError('Invalid protocol');
        Exit;
      end;

  // find host
  host := gethostbyname(PAnsiChar(domain));
  if host = nil then
  begin
    if Assigned(FOnError) then
      FOnError(Format('Host not found: %s', [domain]));
    Exit;
  end;

  // socket
  FSocket := socket(AF_INET, SOCK_STREAM, 0);
  try
    if FSocket = INVALID_SOCKET then
    begin
      if Assigned(FOnError) then
        FOnError('Unexpected error: can''t allocate socket handle.');
      Exit;
    end;

    // connect
    FillChar(addr, SizeOf(addr), 0);
    addr.sin_family := AF_INET;
    addr.sin_port := htons(port);
    addr.sin_addr.S_addr := PInteger(host.h_addr^)^;
    if connect(FSocket, addr, SizeOf(addr)) <> 0 then
    begin
      if Assigned(FOnError) then
        FOnError(format('Cant''t connect to host: %s:%d', [domain, port]));
      Exit;
    end;

    if ssl then
    begin
      FCtx := SSL_CTX_new(SSLv23_method);
      SSL_CTX_set_cipher_list(FCtx, 'DEFAULT');

      SSL_CTX_set_default_passwd_cb_userdata(FCtx, Self);
      SSL_CTX_set_default_passwd_cb(FCtx, @SSLPasswordCallback);

      if FCertificateFile <> '' then
        if SSL_CTX_use_certificate_chain_file(FCtx, PAnsiChar(FCertificateFile)) <> 1 then
          if SSL_CTX_use_certificate_file(FCtx, PAnsiChar(FCertificateFile), SSL_FILETYPE_PEM) <> 1 then
            if SSL_CTX_use_certificate_file(FCtx, PAnsiChar(FCertificateFile), SSL_FILETYPE_ASN1) <> 1 then
            begin
              if Assigned(FOnError) then
                FOnError('SSL: Can''t use certificate');
              Exit;
            end;

      if FPrivateKeyFile <> '' then
        if SSL_CTX_use_RSAPrivateKey_file(FCtx, PAnsiChar(FPrivateKeyFile), SSL_FILETYPE_PEM) <> 1 then
          if SSL_CTX_use_RSAPrivateKey_file(FCtx, PAnsiChar(FPrivateKeyFile), SSL_FILETYPE_ASN1) <> 1 then
          begin
            if Assigned(FOnError) then
              FOnError('SSL: Can''t use key file');
            Exit;
          end;

      if FCertCAFile <> '' then
        if SSL_CTX_load_verify_locations(FCtx, PAnsiChar(FCertCAFile), nil) <> 1 then
        begin
          if Assigned(FOnError) then
            FOnError('SSL: Can''t use CA Cert');
          Exit;
        end;

      FSsl := SSL_new(FCtx);
      SSL_set_fd(FSsl, FSocket);
      if SSL_connect(FSsl) <> 1 then
      begin
        if Assigned(FOnError) then
          FOnError('SSL: connection error');
        Exit;
      end;
    end;

    //uri := HTTPEncode(uri);
    HTTPWriteLine('GET ' + uri + ' HTTP/1.1');
    HTTPWriteLine('Upgrade: WebSocket');
    HTTPWriteLine('Connection: Upgrade');
    HTTPWriteLine('Host: ' + domain);
    HTTPWriteLine('Origin: ' + origin);

    //HTTPWriteLine('Sec-WebSocket-Key1: ' + RawbyteString(WS_GenerateKeyNumber(challenge.num1)));
    //HTTPWriteLine('Sec-WebSocket-Key2: ' + RawbyteString(WS_GenerateKeyNumber(challenge.num2)));

    HTTPWriteLine('Sec-WebSocket-Key: ' + WS2_GenerateKey());
    HTTPWriteLine('Sec-WebSocket-Version: 13');

    if Assigned(FOnAddField) then
      FOnAddField(function (const key: RawByteString; const value: RawByteString): Boolean begin
        HTTPWriteLine(RawbyteString(key) + ': ' + value);
        Result := True;
      end);

  //  writeline('Sec-WebSocket-Protocol: sample');
    HTTPWriteLine('');
    {for i := 0 to 7 do
      challenge.key3[i] := Random(256);
    SockSend(challenge.key3, SizeOf(challenge.key3), 0);}

    dic := TDictionary<RawByteString, RawByteString>.Create;
    try
      ReadTimeOut := 3000;
      setsockopt(FSocket, SOL_SOCKET, SO_RCVTIMEO, @ReadTimeOut, SizeOf(ReadTimeOut));
      if not HTTPParse(
        function (var buf; len: Integer): Integer
        begin
          Result := SockRecv(buf, len, 0)
        end,
        function (code: Integer; const mesg: RawByteString): Boolean
          begin
            Result := code = 101;
            if not Result and Assigned(FOnError) then
              FOnError(Format('Invalid response code: %d %s', [code, mesg]));
          end,
        function (const key: RawByteString; const value: RawByteString): Boolean
        //var S: string;
        begin
          //S := key + '=' + value;
          //if S <> '' then;
          dic.AddOrSetValue(lowercase(key), value);
          Result := True;
        end) then
          begin
            if Assigned(FOnError) then
              FOnError('Unexpected error when parsing HTTP header');
            Exit;
          end;

      if not((dic.TryGetValue('upgrade', value) and (LowerCase(value) = 'websocket')) and
      (dic.TryGetValue('connection', value) and (LowerCase(string(value)) = 'upgrade'))) then
        begin
          if Assigned(FOnError) then
            FOnError('Invalid upgrade header field');
          Exit;
        end;

//      if not (dic.TryGetValue('sec-websocket-origin', value) and (value = 'null')) then
//        begin
//          if Assigned(FOnError) then
//            FOnError('');
//          Exit;
//        end;


      {if not (dic.TryGetValue('sec-websocket-location', value) and (value = 'ws://' + domain + uri)) then
        begin
          if Assigned(FOnError) then
            FOnError('Invalid sec-websocket-location header field');
          Exit;
        end;

      MD5(@challenge, SizeOf(challenge), @md5_expected);
      if SockRecv(md5_returned, SizeOf(md5_returned), 0) <> SizeOf(md5_returned) then
      begin
        if Assigned(FOnError) then
          FOnError('Server didn''t send challenge response');
        Exit;
      end;

      if not CompareMem(@md5_expected, @md5_returned, SizeOf(md5_expected)) then
      begin
        if Assigned(FOnError) then
          FOnError('Websocket challenge failed');
        Exit;
      end;}

      ReadTimeOut := 0;
      setsockopt(FSocket, SOL_SOCKET, SO_RCVTIMEO, @ReadTimeOut, SizeOf(ReadTimeOut));
    finally
      dic.Free;
    end;

    FReadyState := rsOpen;
    if Assigned(FOnOpen) then
      FOnOpen();

    Listen;
  finally
    if FReadyState = rsConnecting then
    begin
      closesocket(FSocket);
      FSocket := INVALID_SOCKET;
      FReadyState := rsClosed;
    end;
  end;
end;

class constructor TWebSocket.Create;
var
  Data: TWSAData;
begin
  WSAStartup($0202, Data);
end;

destructor TWebSocket.Destroy;
begin
  Close;
  inherited;
end;

constructor TWebSocket.Create(const password, CertificateFile,
  PrivateKeyFile, CertCAFile: AnsiString);
begin
  inherited Create;
  FReadyState := rsClosed;
  FSocket := INVALID_SOCKET;
  FCtx := nil;
  FSsl := nil;
  FPassword := password;
  FCertificateFile := CertificateFile;
  FPrivateKeyFile := PrivateKeyFile;
  FCertCAFile := CertCAFile;
end;

function TWebSocket.getReadyState: TWSReadyState;
begin
  Result := FReadyState;
end;

procedure TWebSocket.Listen;
begin
  TThreadIt.Create(procedure
    var
      c: AnsiChar;
      st: Boolean;
      rb: RawByteString;
    begin
      st := True;
      while (FReadyState = rsOpen) and (SockRecv(c, 1, 0) = 1) do
      begin
        if st then
          case c of
            #0:
              begin
                rb := '';
                st := False;
              end;
          else
            Break;
          end
        else
          case c of
            #$FF:
              if FReadyState = rsOpen then
              begin
                TThread.Synchronize(nil, procedure begin
                  if Assigned(FOnMessage) then
                    FOnMessage(string(UTF8ToString(rb)));
                end);
                st := True;
              end;
          else
            rb := rb + c;
          end
      end;
      if FReadyState = rsOpen then // remotely closed
        TThread.Synchronize(nil, procedure begin
          Close;
        end);
    end);
end;

procedure TWebSocket.Send(const data: string);
{var
  rb: RawByteString;
begin
  rb := #$00 + RawByteString(UTF8String(data)) + #$FF;
  SockSend(PAnsiChar(rb)^, Length(rb), 0);}

  function hexToStr(aDec: integer; aLength: integer): string;
  var tmp: string;
      i: integer;
  begin
    tmp := IntToHex(aDec, aLength);
    result := '';
    for i := 1 to (Length(tmp)+1) div 2 do
      result := result + ansichar(StrToInt('$'+Copy(tmp, i * 2 - 1, 2)));
  end;


const
  wsCodeText = $1;
var
  B: Byte;
  S: AnsiString;
  rb: RawByteString;
  I, L: Integer;
  mBytes: array[0..3] of Byte;
  SB: TMemoryStream;
begin
  B := $80 + wsCodeText;
  S := AnsiChar(B);

  L := Length(data);
  B := $80;
  if L < 126 then
    B := B + L
  else if L < 65536 then
    B := B + 126
  else
    B := B + 127;

  S := S + AnsiChar(B);

  if L >= 126 then
  begin
    if L < 65536 then
      S := S + hexToStr(L, 4)
    else
      S := S + hexToStr(L, 16);
  end;

  for I := 0 to 3 do
  begin
    mBytes[I] := Random(256);
    S := S + AnsiChar(mBytes[I]);
  end;

  SB := TMemoryStream.Create;
  try
    SB.WriteBuffer(PAnsiChar(S)^, Length(S));

    for I := 1 to L do
    begin
      B := Byte(AnsiChar(data[I]));
      B := B xor mBytes[I mod 4];
      SB.WriteBuffer(B, SizeOf(B));
      //SB.WriteString(IntToStr(B));
    end;

    //rb := S + RawByteString(UTF8String(SB.DataString));

//    SetLength(S, SB.Size);
//    SB.Position := 0;
//    SB.Read(Pointer(S)^, SB.Size);
//    if S <> '' then;

    SockSend(SB.Memory^, SB.Size, 0);
    //SockSend(PAnsiChar(S)^, Length(S), 0);
  finally
    SB.Free;
  end;

  //SockSend(PAnsiChar(rb)^, Length(rb), 0);

end;

procedure TWebSocket.SetOnAddField(const value: TOnHTTPAddField);
begin
  FOnAddField := value;
end;

procedure TWebSocket.SetOnClose(const value: TProc);
begin
  FOnClose := value;
end;

procedure TWebSocket.SetOnError(const value: TWSMessage);
begin
  FOnError := value;
end;

procedure TWebSocket.SetOnMessage(const value: TWSMessage);
begin
  FOnMessage := value;
end;

procedure TWebSocket.SetOnOpen(const value: TProc);
begin
  FOnOpen := value;
end;

function TWebSocket.SockSend(var Buf; len, flags: Integer): Integer;
begin
  if FSsl <> nil then
    Result := SSL_write(FSsl, @Buf, len) else
    Result := WinSock.send(FSocket, Buf, len, flags);
end;

function TWebSocket.SockRecv(var Buf; len, flags: Integer): Integer;
begin
  if FSsl <> nil then
    Result := SSL_read(FSsl, @Buf, len) else
    Result := recv(FSocket, Buf, len, flags);
end;

class destructor TWebSocket.Destroy;
begin
  WSACleanup;
end;

function TWebSocket.GetOnAddField: TOnHTTPAddField;
begin
  Result := FOnAddField;
end;

function TWebSocket.GetOnClose: TProc;
begin
  Result := FOnClose;
end;

function TWebSocket.GetOnError: TWSMessage;
begin
  Result := FOnError;
end;

function TWebSocket.GetOnMessage: TWSMessage;
begin
  Result := FOnMessage;
end;

function TWebSocket.GetOnOpen: TProc;
begin
  Result := FOnOpen;
end;

{$ENDREGION}
end.

