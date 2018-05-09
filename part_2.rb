require 'httparty'

response = HTTParty.get('https://represent.opennorth.ca/elections')
response_json = JSON.parse(response.body)

response_json["objects"].each do |hash|
  puts hash["name"]
end
