module ConsultarEndereco
    
    #Inclui a biblioteca HttParty projeto
    include HTTParty
    
    #Configura o endpoint pelo require_relative configurado na spec_helper.rb
    base_uri "https://viacep.com.br/ws"

    format :json
    
end
     
