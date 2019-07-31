Dado("que faça uma requisição por cep") do
  
    @response = ConsultarEndereco.get('/07120-200/json/') 

end
  
  Quando("a API verifica o método requisitado") do
    
    #Retorna a requisição em formato json
    puts @response.body

end
  
  Entao("um response  é enviado") do
    
    #Funcionalidade irá verificar o retorno na API, se tudo ocorrer BEM, o retorno será 200
    puts @response.code

    case @response.code
    when 200
      puts "CEP localizado com sucesso"
    when 400
      puts "Erro na requisição - verifique se os dados estão corretos"
    when 500...600
      puts " Temos algum problema na API #{response.code}"
  
  end
end