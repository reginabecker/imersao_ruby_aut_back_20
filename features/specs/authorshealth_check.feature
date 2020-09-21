#language: pt
@healtcheck
Funcionalidade:  Testes de healtcheck da api de autores

Cenario: Healtcheck endpoint listar autores
    Dado que faco uma requisicao GET para o endpoint de obter autores
    Então o status de resposta e 200

Cenario: Healtcheck endpoint listar autores por livro
    Dado que faco uma requisicao GET para o endpoint de obter autores por livro
    Então o status de resposta e 200

Cenario: Healtcheck endpoint cadastrar autor
    Dado que faco uma requisicao POST para o endpoint de cadastrar autor
    Então o status de resposta e 200


Cenario: Healtcheck endpoint listar autores por id
    Dado que faco uma requisicao GET para o endpoint de obter autores com id do autor
    Então o status de resposta e 200    


Cenario: Healtcheck endpoint editar autor
    Dado que faco uma requisicao PUT para o endpoint de editar autor
    Então o status de resposta e 200      

Cenario: Healtcheck endpoint excluir autor
    Dado que faco uma requisicao DELETE para o endpoint de excluir autor
    Então o status de resposta e 200          