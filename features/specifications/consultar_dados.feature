#language: pt

Funcionalidade: Consultar dados Válidos e Inválidos
Aplicação irá fazer uma consulta na API de cep
trabalhando com dados válidos e inválidos

@consultar_ibge

Cenário: Obtendo código do IBGE do endereço
    Dado que eu consulte um cep
    Quando solicito o código do IBGE
    Entao a API retorna com sucesso

    @cep_invalido

Cenário: Buscar CEP inválido
    Dado que eu consulte um cep inválido
    Entao a API retorna erro na requisição