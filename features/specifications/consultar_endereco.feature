#language: pt

Funcionalidade: Consultar dados de endereço
Aplicação irá fazer uma consulta na API e trazer 
dados de um endereço a partir do cep

@consultar_end

Cenário: Consultar os dados de um endereço a partir de um cep
    Dado que faça uma requisição por cep 
    Quando a API verifica o método requisitado
    Entao um response  é enviado 