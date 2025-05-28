unit USisDos.Tela.IFuncoesTelaProduto;

interface

uses
  USisDos.Model.Produto,
  System.Generics.Collections;

type
  IFuncoesTelaProduto = interface['{4061AFBB-C724-4DA6-85B1-CE86D093BF83}']
    function  GetFuncaoCadProduto : IFuncoesTelaProduto;
    procedure AdicionarLista;
    procedure CadastrarProduto(ACodigo, ADescricao : string; APreco : Double);
    function  GetProduto : TProduto;
    function  GetListaProduto : TList<TProduto>;
  end;

implementation

end.
