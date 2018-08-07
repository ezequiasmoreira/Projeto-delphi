unit UnitpesquisaPadraoMestreDetalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UnitpesquisaPadrao, Data.DB,
  IBX.IBCustomDataSet, IBX.IBQuery, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFormPesquisaPadraoMestreDetalhe = class(TFormPesquisaPadrao)
    QueryItem: TIBQuery;
    DsItem: TDataSource;
    GridItem: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaPadraoMestreDetalhe: TFormPesquisaPadraoMestreDetalhe;

implementation

{$R *.dfm}

uses UnitTransacao;

end.
