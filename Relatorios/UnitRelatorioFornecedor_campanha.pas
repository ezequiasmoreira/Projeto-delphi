unit UnitRelatorioFornecedor_campanha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.CheckLst, Vcl.Buttons,
  Vcl.ExtCtrls, frxClass, frxDBSet, Data.DB, IBX.IBCustomDataSet, IBX.IBQuery;

type
  TFormrelatorioFornecedor_campanha = class(TForm)
    RadioFornecedor: TRadioGroup;
    EditCod: TLabeledEdit;
    editNome: TLabeledEdit;
    SpeedButton1: TSpeedButton;
    ButtonImprimir: TBitBtn;
    ButtonFechar: TBitBtn;
    Query: TIBQuery;
    reportFor_campanha: TfrxReport;
    DatasetFor_campanha: TfrxDBDataset;
    procedure RadioFornecedorClick(Sender: TObject);
    procedure ButtonImprimirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ButtonFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormrelatorioFornecedor_campanha: TFormrelatorioFornecedor_campanha;

implementation

{$R *.dfm}

uses UnitTransacao, UnitPesquisaDeCampanha;

procedure TFormrelatorioFornecedor_campanha.ButtonFecharClick(Sender: TObject);
begin
  close;
end;

procedure TFormrelatorioFornecedor_campanha.ButtonImprimirClick(
  Sender: TObject);
begin
   case RadioFornecedor.ItemIndex of
    0: reportFor_campanha.ShowReport();
    1:begin
        query.close;
        query.sql.clear;
        query.sql.add('SELECT CAMPANHA.COD_CAMPAN, CAMPANHA. DATA_INICIAL, '+
                      'CAMPANHA.DATA_FINAL, CAMPANHA.NM_CAMPAN, '+
                      'FORNECEDOR.NM_FORNECEDOR FROM CAMPANHA '+
                      'INNER JOIN FORNECEDOR ON (FORNECEDOR.CD_FORNECEDOR =  '+
                      'CAMPANHA.FORNECEDOR_CD_FORNECEDOR) '+
                      'WHERE ( CAMPANHA.COD_CAMPAN = :CODIGO) ORDER BY  CAMPANHA.NM_CAMPAN;');
        query.open;
        query.Open;
        Query.ParamByName('CODIGO').AsInteger:=
            StrToInt(EditCod.Text);
        query.CLOSE;
        reportFor_campanha.ShowReport();
    end;
   end;
end;

procedure TFormrelatorioFornecedor_campanha.RadioFornecedorClick(
  Sender: TObject);
begin
  case RadioFornecedor.ItemIndex of
    0:begin
      EditCod.Enabled:=false;
      editNome.Enabled:= false;
      SpeedButton1.Enabled:=false;

    end;
    1: begin
        EditCod.Enabled:=true;
        editNome.Enabled:= True;
        SpeedButton1.Enabled:=true;
    end;
end;
end;

procedure TFormrelatorioFornecedor_campanha.SpeedButton1Click(Sender: TObject);
begin
  try
      FormPesquisaCampanha:=TFormPesquisaCampanha.Create(Self);
      FormPesquisaCampanha.ShowModal;
    finally
      if (FormPesquisaCampanha.ModalResult = mrOk) then Begin
        EditCod.TEXT:=
        FormPesquisaCampanha.QueryCOD_CAMPAN.AsString;

        editNome.Text:=
        FormPesquisaCampanha.QueryCOD_CAMPAN.AsString;
      End;
      FormPesquisaCampanha.Free;
  end;
end;

end.
