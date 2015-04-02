require 'sinatra'
require 'twitter'

get '/' do
  body 'ok'
end

post '/' do
  client = connect_to_twitter
  data   = JSON.parse(params.to_json).to_hash

  client.update(data['title'])
end

def connect_to_twitter
  Twitter::REST::Client.new do |config|
    config.consumer_key        = 'Y1mkyHFvRi652DgMHFr9yqNJ4'
    config.consumer_secret     = '8Pf8wTqPETknY3WjajG5aMRry337HVjdATxsl7SYqM92UEuFOC'
    config.access_token        = '3131481970-T5vOsXAvAGaUzCYOq58Ay3OhGzrtsfuKyjGsd1s'
    config.access_token_secret = 'Q8fNubKfzp9eb075RqEAhu4TVnldqDTkaY4Fx3jCp3sWE'
  end
end
