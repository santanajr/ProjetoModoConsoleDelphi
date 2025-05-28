unit USisDos.Tela.CriarTelaProduto;

interface

uses
  System.Generics.Collections,
  USisDos.Tela.ICriarTelaProduto,
  USisDos.Model.Produto,
  USisDos.Tela.IFuncoesTelaProduto,
  USisDos.Tela.FuncoesCadastroProduto;

type
  TTelaCriarTelaProduto = class(TInterfacedObject, ICriarTelaProduto)
  private
    FOpcaoEscolhida   : string;
    FFuncaoCadProduto : IFuncoesTelaProduto;

    procedure PedirDadosProduto(var ACodigo : string; var ADescricao: string; var APreco: Double);
    procedure CadastrarProduto(ACodigo, ADescricao : string; APreco : Double);
  public
    constructor Create;

    function  CriarTelaCadastroProduto : ICriarTelaProduto;
    function  MensagemDesejaContinuar  : ICriarTelaProduto;
    procedure SetOpcaoEscolhida(AOpcaoEscolida : string);
    function  GetOpcaoEscolhida        : string;

    function  GetFuncaoCadProduto : IFuncoesTelaProduto;

    class function new : ICriarTelaProduto;
  end;


implementation

{ TTelaCriarTela }

constructor TTelaCriarTelaProduto.Create;
begin
  FFuncaoCadProduto := TFuncoesCadastroProduto.create;
end;

function TTelaCriarTelaProduto.CriarTelaCadastroProduto: ICriarTelaProduto;
var
  LCodigo, LDescricao : string;
  LPreco : double;
begin
  result := Self;
  PedirDadosProduto(LCodigo, LDescricao, LPreco);
  CadastrarProduto(LCodigo, LDescricao, LPreco);
  MensagemDesejaContinuar;
end;


function TTelaCriarTelaProduto.GetFuncaoCadProduto: IFuncoesTelaProduto;
begin
  result := FFuncaoCadProduto;
end;

function TTelaCriarTelaProduto.GetOpcaoEscolhida: string;
begin
  result := FOpcaoEscolhida;
end;

function TTelaCriarTelaProduto.MensagemDesejaContinuar: ICriarTelaProduto;
var
  LOpcaoEscolhida : string;
begin
  Writeln('Deseja continuar ? (S/N)');
  ReadLn(LOpcaoEscolhida);
  SetOpcaoEscolhida(LOpcaoEscolhida);
  result := Self;
end;

class function TTelaCriarTelaProduto.new: ICriarTelaProduto;
begin
  result := TTelaCriarTelaProduto.Create;
end;

procedure TTelaCriarTelaProduto.PedirDadosProduto(var ACodigo : string; var ADescricao: string; var APreco: Double);
begin
  Writeln('Digite o codigo do produto');
  ReadLn(ACodigo);
  Writeln('Digite a descrição do produto');
  ReadLn(ADescricao);
  Writeln('Digite o preço do produto');
  ReadLn(APreco);
end;

procedure TTelaCriarTelaProduto.SetOpcaoEscolhida(AOpcaoEscolida: string);
begin
  FOpcaoEscolhida := AOpcaoEscolida;
end;

procedure TTelaCriarTelaProduto.CadastrarProduto(ACodigo, ADescricao : string; APreco : Double);
begin
  FFuncaoCadProduto.CadastrarProduto(ACodigo, ADescricao, APreco);
end;

end.
