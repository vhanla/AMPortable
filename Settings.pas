unit Settings;

interface

uses
  classes, sysutils, Rest.json, Generics.Collections;

type

  TCodeEditor = class
  private
    FName: String;
    FPath: String;
    FParam: String;
    FEnabled: Boolean;
  public
    constructor Create(const AName, APath, AParam: String);
    destructor Destroy(); override;
    property Name: String read FName write FName;
    property Path: String read FPath write FPath;
    property Param: String read FParam write FParam;
    property Enabled: Boolean read FEnabled write FEnabled;
  end;

  TCodeEditors = class
  private
    FDefault: Extended;
    FItems: TArray<TCodeEditor>;
  public
    property default: Extended read FDefault write FDefault;
    property items: TArray<TCodeEditor> read FItems write FItems;
    destructor Destroy; override;
    procedure Append(item: TCodeEditor);
    procedure Remove(index: Integer);
    function Count: Integer;
  end;

  TSettings = class(TObject)
  private
    FCodeEditors: TCodeEditors;
    FShowSplash: Boolean;
    FPort: Integer;
    FUseSSL: Boolean;
    FTestSite: String;
    FCodeEditor: String;
    FPHPVersion: String;
    FHTTPServer: String;
    FMonitorPort: Integer;
  public
    constructor Create;
    destructor Destroy; override;
    property ShowSplash: Boolean read FShowSplash write FShowSplash;
    property Port: Integer read FPort write FPort;
    property UseSSL: Boolean read FUseSSL write FUseSSL;
    property TestSite: String read FTestSite write FTestSite;
    property DefaultCodeEditor: String read FCodeEditor write FCodeEditor;
    property PHPVersion: String read FPHPVersion write FPHPVersion;
    property HTTPServer: String read FHTTPServer write FHTTPServer;
    property MonitorPort: Integer read FMonitorPort write FMonitorPort;
    property CodeEditors: TCodeEditors read FCodeEditors write FCodeEditors;
  end;


  TSettingsHandler = class(TObject)
    private
    public
      class function LoadSettings(fsettings: String = ''):TSettings;
      class procedure SaveSettings(settings: TSettings; fsettings: String = '');
  end;

implementation

{ TSettings }

constructor TSettings.Create;
begin
  inherited;
  FCodeEditors := TCodeEditors.Create();
end;

destructor TSettings.Destroy;
begin
  FCodeEditors.Free;

  inherited;
end;

{ TSettingsHandler }

class function TSettingsHandler.LoadSettings(fSettings: String): TSettings;
var
  strings: TStrings;
begin
  strings := TStringList.Create;
  try
    if fsettings = '' then
      fsettings := ExtractFilePath(ParamStr(0)) + 'settings.json';

    if FileExists(fsettings) then
    begin
      strings.LoadFromFile(fsettings);
      //Result := TSettings.Create();
      Result := TJson.JsonToObject<TSettings>(strings.Text);//.Create();
    end
    else
    begin
      Result := TSettings.Create();
    end;

  finally
    strings.Free;
  end;
end;

class procedure TSettingsHandler.SaveSettings(settings: TSettings;
  fsettings: String);
var
  strings: TStrings;
  json: String;
begin
  if fsettings = '' then
    fsettings := ExtractFilePath(ParamStr(0)) + 'settings.json';

  strings := TStringList.Create;
  try
    //json := TJSON.ObjectToJsonString(settings,[joIgnoreEmptyArrays]);
    json := TJSON.ObjectToJsonString(settings);
    strings.Add(json);
    strings.SaveToFile(fsettings);
  finally
    strings.Free;
  end;
end;

{ TCodeEditor }

constructor TCodeEditor.Create(const AName, APath, AParam: String);
begin
  FName := AName;
  FPath := APath;
  FParam := AParam;
  FEnabled := True;
end;

destructor TCodeEditor.Destroy;
begin
  inherited;
end;

{ TCodeEditors }

procedure TCodeEditors.Append(item: TCodeEditor);
begin
  SetLength(FItems, Length(FItems) +1);
  Fitems[High(Fitems)]:= item;
end;

function TCodeEditors.Count: Integer;
begin
  Result := Length(FItems);
end;

destructor TCodeEditors.Destroy;
var
  LitemsItem: TCodeEditor;
begin

 for LitemsItem in FItems do
   LitemsItem.free;

  inherited;
end;

procedure TCodeEditors.Remove(index: Integer);
var
  I: Integer;
begin
  if (Count > 0) and (index < Count)then
  begin
    FItems[index].Free;
    for I := index + 1 to Count - 1 do
      FItems[I - 1] := FItems[I];

    SetLength(FItems, Count - 1);
  end;
end;

end.
