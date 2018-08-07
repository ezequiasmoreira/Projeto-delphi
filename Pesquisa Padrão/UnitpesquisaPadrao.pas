unit UnitpesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormPesquisaPadrao = class(TForm)
    GroupOpcoes: TGroupBox;
    RadioFiltro: TRadioGroup;
    MaskEditPesquisar: TMaskEdit;
    Label1: TLabel;
    ButtonPesquisar: TBitBtn;
    GridPesquisa: TDBGrid;
    Query: TIBQuery;
    DS: TDataSource;
    ButtonImprimir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure GridPesquisaDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaPadrao: TFormPesquisaPadrao;

implementation

{$R *.dfm}

uses UnitTransacao;

procedure TFormPesquisaPadrao.FormCreate(Sender: TObject);
begin
  Query.Open;
end;

procedure TFormPesquisaPadrao.GridPesquisaDblClick(Sender: TObject);
begin
  ModalResult:= mrOk;
end;

end.
