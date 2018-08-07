unit UnitPesquisaDeCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormPesquisaCidade = class(TFormPesquisaPadrao)
    QueryCOD_CIDADE: TIntegerField;
    QueryNOM_CIDADE: TIBStringField;
    QueryCD_ESTADO: TSmallintField;
    QueryNOM_ESTADO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaCidade: TFormPesquisaCidade;

implementation

{$R *.dfm}

uses UnitCadastroCliente;

end.
