require 'httparty'

response = HTTParty.get('https://makemeapassword.org/api/v1/passphrase/json?pc=10&wc=3&sp=n')
response_body = JSON.parse(response.body)

response_body['pws'].each do |pass|

  puts '--- ' + pass
end
