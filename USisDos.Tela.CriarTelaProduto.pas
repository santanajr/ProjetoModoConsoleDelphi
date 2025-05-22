unit USisDos.Tela.CriarTelaProduto;

interface

uses
  USisDos.Tela.ICriarTelaProduto, USisDos.Model.Produto;

type
  TTelaCriarTelaProduto = class(TInterfacedObject, ICriarTelaProduto)
  private
    FProduto : TProduto;
    FOpcaoEscolhida : string;

    procedure SetProduto(ACodigo, ADescricao : string; APreco : Double);
  public
    constructor Create;
    destructor  Destroy;

    function  GetProduto               : TProduto;
    function  GetOpcaoEscolhida       : string;

    function  CriarTelaCadastroProduto : ICriarTelaProduto;
    function  MensagemDesejaContinuar  : ICriarTelaProduto;

    class function new : ICriarTelaProduto;
  end;


implementation

{ TTelaCriarTela }

constructor TTelaCriarTelaProduto.Create;
begin
  FProduto := TProduto.Create;
end;

function TTelaCriarTelaProduto.CriarTelaCadastroProduto: ICriarTelaProduto;
var
  LCodigo, LDescricao : string;
  LPreco : double;

  procedure MontagemTela;
  begin
    Writeln('Digite o codigo do produto');
    ReadLn(LCodigo);
    Writeln('Digite a descrição do produto');
    ReadLn(LDescricao);
    Writeln('Digite o preço do produto');
    ReadLn(LPreco);
  end;

begin
  result := Self;

  MontagemTela;

  SetProduto(LCodigo, LDescricao, LPreco);

  MensagemDesejaContinuar;
end;


destructor TTelaCriarTelaProduto.Destroy;
begin

end;

function TTelaCriarTelaProduto.GetOpcaoEscolhida: string;
begin
  result := FOpcaoEscolhida;
end;

function TTelaCriarTelaProduto.GetProduto: TProduto;
begin
  result := FProduto;
end;

function TTelaCriarTelaProduto.MensagemDesejaContinuar: ICriarTelaProduto;
begin
  Writeln('Deseja continuar ? (S/N)');
  ReadLn(FOpcaoEscolhida);

  result := Self;
end;

class function TTelaCriarTelaProduto.new: ICriarTelaProduto;
begin
  result := TTelaCriarTelaProduto.Create;
end;

procedure TTelaCriarTelaProduto.SetProduto(ACodigo, ADescricao : string; APreco : Double);
begin
  FProduto.FCodigo := ACodigo;
  FProduto.FDescricao := ADescricao;
  FProduto.FPreco := APreco;
end;

end.
