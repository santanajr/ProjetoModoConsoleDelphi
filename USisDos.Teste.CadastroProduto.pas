unit USisDos.Teste.CadastroProduto;

interface

uses
  System.SysUtils,
  DUnitX.TestFramework,
  USisDos.Tela.ICriarTelaProduto,
  USisDos.Tela.CriarTelaProduto;

type
  [TestFixture]
  TestCadastroProduto = class
  private
    FCadastroProduto : ICriarTelaProduto;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    [TestCase('Teste Cadastro Produto - GetProdutoVazio - 1','1,ABC,10')]
    [TestCase('Teste Cadastro Produto - GetProdutoVazio - 2','2,DEF,20')]
    procedure GetProdutoVazio(ACodigo, ADesc : string; Apreco: double) ;

    [Test]
    [TestCase('Teste Cadastro Produto - GetProdutoPreenchido - 1','1,ABC,10')]
    [TestCase('Teste Cadastro Produto - GetProdutoPreenchido - 2','2,DEF,20')]
    procedure GetProdutoPreenchido(ACodigo, ADesc : string; Apreco: double) ;


    [Test]
    [TestCase('Teste Cadastro Produto - SetProduto - 1','1,ABC,10')]
    [TestCase('Teste Cadastro Produto - SetProduto - 2','2,DEF,20')]
    procedure SetProduto(ACodigo, ADesc : string; Apreco: double);

    [Test]
    [Ignore('Tela de cadastro em modo prompt - n�o precisa')]
    procedure  CriarTelaCadastroProduto;

    [Test]
    [Ignore('Tela de cadastro em modo prompt - n�o precisa')]
    procedure  MensagemDesejaContinuar;

    [Test]
    //[Ignore('Falta Implementar')]
    [TestCase('Teste Cadastro Produto - SetOpcaoEscolhida = S','S')]
    [TestCase('Teste Cadastro Produto - SetOpcaoEscolhida = N','N')]
    procedure  SetOpcaoEscolhida(AOpcao : string);

    [Test]
    [Ignore('Falta Implementar')]
    procedure  GetOpcaoEscolhida;

    [Test]
    //[Ignore('Falta Implementar')]
    [TestCase('Teste Cadastro Produto - GetListaProduto - 1','1,ABC,10')]
    [TestCase('Teste Cadastro Produto - GetListaProduto - 2','2,DEF,20')]
    procedure  GetListaProduto(ACodigo, ADesc : string; Apreco: double);
   end;

implementation

procedure TestCadastroProduto.CriarTelaCadastroProduto;
begin

end;

procedure TestCadastroProduto.GetListaProduto(ACodigo, ADesc : string; Apreco: double);
begin
  FCadastroProduto.GetFuncaoCadProduto.CadastrarProduto(ACodigo, ADesc, Apreco);
  Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetListaProduto <> nil , 'A lista existe');
  if FCadastroProduto.GetFuncaoCadProduto.GetListaProduto <> nil then
    Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetListaProduto.Count = 1 , 'Total de produto na lista = 1');
end;

procedure TestCadastroProduto.GetOpcaoEscolhida;
begin

end;


procedure TestCadastroProduto.GetProdutoPreenchido(ACodigo, ADesc: string; Apreco: double);
begin
  FCadastroProduto.GetFuncaoCadProduto.CadastrarProduto(ACodigo, ADesc, Apreco);
  Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetProduto.FCodigo    = Acodigo , 'O codigo do produto n�o est� vazio');
  Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetProduto.FDescricao = ADesc   , 'A Descricao do produto n�o est� vazia');
  Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetProduto.FPreco     = Apreco  , 'O valor do produto nao � zero');
end;

procedure TestCadastroProduto.GetProdutoVazio(ACodigo, ADesc : string; Apreco: double);
begin
  Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetProduto = nil, 'O Produto n�o existe');
end;

procedure TestCadastroProduto.MensagemDesejaContinuar;
begin

end;

procedure TestCadastroProduto.SetOpcaoEscolhida(AOpcao: string);
begin
  FCadastroProduto.SetOpcaoEscolhida(AOpcao);
  Assert.IsTrue(FCadastroProduto.GetOpcaoEscolhida = AOpcao, 'O Valor preenchido = ' + FCadastroProduto.GetOpcaoEscolhida);
end;

procedure TestCadastroProduto.SetProduto(ACodigo, ADesc: string; Apreco: double);
begin
  FCadastroProduto.GetFuncaoCadProduto.CadastrarProduto(ACodigo,ADesc, Apreco);
  Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetProduto.FCodigo    = ACodigo , 'Os c�digo s�o diferentes');
  Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetProduto.FDescricao = ADesc   , 'A descri��o � diferente');
  Assert.IsTrue(FCadastroProduto.GetFuncaoCadProduto.GetProduto.FPreco     = Apreco  , 'O Valor do produto � diferente');
end;

procedure TestCadastroProduto.Setup;
begin
  FCadastroProduto := TTelaCriarTelaProduto.Create;
end;

procedure TestCadastroProduto.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TestCadastroProduto);
end.
