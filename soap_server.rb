require 'savon'

# Creamos un servicio SOAP sencillo
client = Savon.client(wsdl: 'http://www.dneonline.com/calculator.asmx?WSDL')

response = client.call(:add, message: { 'intA' => 1, 'intB' => 2 })

puts "Resultado del servicio SOAP: #{response.body[:add_result]}"
