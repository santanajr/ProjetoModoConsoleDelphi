Projeto usando algumas boas práticas de desenvolvimento de código.

Esse Projeto foi feito usando o Delphi Community Edition 12

É um projeto em modo console .
Não possui Banco de dados

Características básicas de algumas boas práticas do  Clean Code (Código Limpo), desse projeto :

- Nome das Funcionalidades (Fácil compreensão e Significativos) ,
- Código legível
- Funções pequenas e focadas
- Evitar comentários no código (Somente se necessário)

Trecho do código do projeto :


O projeto tamém apresenta o uso : 
- Uso de Interface
- Teste Unitário usando DUnitX





O Projeto usando Interface : 
Vantagens do uso de interfaces no Delphi:
Desacoplamento: Permite alterar a implementação sem afetar o restante do sistema.
Testabilidade: Facilita uso de mocks em testes automatizados.
Polimorfismo puro: Diferentes classes podem implementar a mesma interface.
Gerenciamento automático de memória: Interfaces usam contagem de referência (quando descendem de TInterfacedObject), evitando Free.


Fluent Code

Escrita de código que é natural, legível e expressivo — quase como uma frase em linguagem humana.

 Por que isso é considerado "código fluido"?
Cadeia de chamadas (chaining): cada chamada retorna a própria instância.


Leitura natural: quase parece uma sentença ("Crie um relatório com título X, rodapé Y e gere").


Organização e clareza: facilita entender o fluxo e configuração de objetos complexos.


Segue Exemplo Fluent Code : 



  
Projeto Console



Projeto de Teste Unitário

  






Explicação sobre as telas :

 

O usuário escolhe as opções para tal temos 3 Telas :
- Menu Principal
- Cadastro Produto
- Cadastro Estoque
- Registro Venda - Módulo em desenvolvimento
- Sair

Em nossos fontes :

2 projetos
PConsole - Projeto de Cadastro
PtesteConsole - Projeto Teste Unitário do projeto 
  
Modelos
Produto        - USisDos.Model.Produto
Estoque        - USisDos.Model.Estoque

Inferfaces
Produto        - USisDos.Tela.ICadastroProduto
Estoque        - USisDos.Tela.ICadastroEstoque
Menu Principal - USisDos.Tela.IMenu
  
Telas
Produto        - USisDos.Tela.CadastroProduto
Estoque        - USisDos.Tela.CadastroEstoque
Menu Principal - USisDos.Tela.Menu
  

