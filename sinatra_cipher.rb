require 'sinatra'
require 'sinatra/reloader' if development?
require './caesar_cipher'

#index
get '/' do
    message_encrypted = ""
    erb :index, :locals => {:message_encrypted => message_encrypted}

end

get '/encrypt' do
    message_plain = params['message_plain']
    offset = params['offset'].to_i
    message_encrypted = caesar_cipher(message_plain,offset)
    erb :index, :locals => {:message_encrypted => message_encrypted}
end
