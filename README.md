![image](https://github.com/user-attachments/assets/c9fc1697-415a-4af0-99e5-615a1c8d60da)


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

![Captura de tela 2025-05-01 015015](https://github.com/user-attachments/assets/cd22a98a-a3f9-4c34-b27d-8de42823f16c)


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

![Captura de tela 2025-05-01 014755](https://github.com/user-attachments/assets/763c1a42-e27f-4a30-a022-01e8518358f4)

![Captura de tela 2025-05-01 014858](https://github.com/user-attachments/assets/731a9839-3cb5-4e62-89d5-6220e50a5a36)


  
Projeto Console

![Captura de tela 2025-05-01 011928](https://github.com/user-attachments/assets/0f5f1552-88c8-43b8-b1d5-4e88b46391a6)


Projeto de Teste Unitário DUnitX


![image](https://github.com/user-attachments/assets/4c01e659-5938-47a0-a101-81326895a9e9)



Execução teste unitário

 ![Captura de tela 2025-05-01 013035](https://github.com/user-attachments/assets/6ac87294-e834-4156-be84-355f6ee3b0ed)
 


Explicação sobre as telas :


O usuário escolhe as opções para tal temos 3 Telas :
- Menu Principal
- Cadastro Produto
- Cadastro Estoque
- Registro Venda - Módulo em desenvolvimento
- Sair

Em nossos fontes :

![image](https://github.com/user-attachments/assets/59c2c259-8378-4a39-887c-5761dc42d831)

Teste Unitário - Cadastro Produto - As 3 funções Ignoradas são referente a tela que é modo console.

![image](https://github.com/user-attachments/assets/6581189a-09e1-49f0-bfa6-f2b5b0356a45)


  

  

