Dado("que eu consulte um cep") do
    @request = ConsultarEndereco.get('/07120-200/json/') 
  end
Quando("solicito o código do IBGE") do
    puts @request["ibge"] if true
    puts "Dados do IBGE validados com sucesso, o número é => " + @request["ibge"]
    
   
  end
  
  Entao("a API retorna com sucesso") do
   
    puts @request.code

    case @request.code
    when 200
      puts "Os Dados de IBGE foram LOCALIZADOS com SUCESSO"
    when 400
      puts "Erro na requisição - verifique se os dados estão corretos"
    when 500...600
      puts " Temos algum problema na API #{response.code}"
  
  end
end
  
  Dado("que eu consulte um cep inválido") do
    @request = ConsultarEndereco.get('/07120-399/json/') 
   end
  
 Entao("a API retorna erro na requisição") do
        puts @request
          case @request.code
          when 200
            puts "CEP INVÁLIDO"
          when 400
            puts "Erro na requisição - verifique se os dados estão corretos"
          when 500...600
            puts " Temos algum problema na API #{request.code}"
        
        end
   end




