
# require 'net/http'
# require 'uri'
# require 'json'

# uri = URI.parse("https://language.googleapis.com/v1beta1/documents:analyzeSentiment?key=ENV[GOOGLE_LANGUAGE_API]")
# request = Net::HTTP::Post.new(uri)
# request.content_type = "application/json"
# request.body = ""
# request.body = '{
#                   "document":{
#                     "type":"PLAIN_TEXT",
#                     "content": "こんにちは"
#                   }
#                 }'

# req_options = {
#   use_ssl: uri.scheme == "https",
# }

# response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#   http.request(request)
# end

# json = JSON.parse(response.body)
# p score =  json['documentSentiment']['score']
# p magnitude = json['documentSentiment']['magnitude']
