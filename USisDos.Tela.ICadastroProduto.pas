unit USisDos.Tela.ICadastroProduto;

interface

uses
  System.Generics.Collections,
  USisDos.Model.Produto;

type
  ICadastroProduto = interface['{FDD9AB4B-662C-4F33-82CE-CC534EC379B7}']
    procedure SetProduto(ACodigo, ADescricao : string; AValor: Double);
    function  GetProduto               : TProduto;
    function  GetListaProduto          : TList<TProduto>;
  End;


implementation

end.
