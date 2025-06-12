unit USisDos.Tela.ICriarTelaProduto;

interface

uses
  USisDos.Tela.ICadastroProduto,
  USisDos.Model.Produto,
  System.Generics.Collections,
  USisDos.Tela.IFuncoesTelaProduto;

type
  ICriarTelaProduto = interface ['{48D2CFD4-449D-4C08-A046-133245BF4388}']
    {$REGION 'CRIACAO TELA'}
    function  CriarTelaCadastroProduto : ICriarTelaProduto;
    function  MensagemDesejaContinuar  : ICriarTelaProduto;
    procedure SetOpcaoEscolhida(AOpcaoEscolida : string);
    function  GetOpcaoEscolhida        : string;
    {$ENDREGION}
    function  GetFuncaoCadProduto      : IFuncoesTelaProduto;
  End;


implementation

end.
