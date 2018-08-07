unit UnitTransacao;

interface

uses
  System.SysUtils, System.Classes, IBX.IBDatabase, Data.DB, IBX.IBCustomDataSet,
  IBX.IBQuery, IniFiles,Vcl.Dialogs,Vcl.Forms;

type
  TConexao = class(TDataModule)
    DB: TIBDatabase;
    Transacao: TIBTransaction;
    Query: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure alteraSQL(query: tibQuery; sql: string);
    function gerapk(pk,table: string):integer;

  end;

var
  Conexao: TConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tconexao.alteraSQL(query: tibQuery; sql: string);
begin
  query.close;
  query.sql.clear;
  query.sql.add(sql);
  query.open;
end;

procedure TConexao.DataModuleCreate(Sender: TObject);
var
  arquivoIni : TIniFile;
  caminho    : String;
begin

  arquivoIni:= TIniFile.Create('.\parametros.INI');
  try

    caminho:= arquivoIni.ReadString('BANCO','caminho','');
  finally
    arquivoIni.Free;
  end;

  try
    DB.Close;
    DB.DatabaseName:= caminho;
    DB.Open;
  except
    showmessage('Erro ao conectar banco');
    application.terminate;
  end;

end;

function Tconexao.gerapk(pk,table: string):integer;
var
  SQL: string;
begin
  SQL:= 'SELECT MAX ('+PK+') AS MAIOR FROM '+TABLE;
  alteraSQL(Query,SQL);
  gerapk:= Query.FieldByName('MAIOR').AsInteger + 1;
end;

end.
