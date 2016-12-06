require 'sinatra'

require 'sinatra/reloader' if development?

require './caesar_cipher'

get '/' do
  shift_string = params["shift"]
  phrase_string = params["phrase"]
  
  shift = shift_string.to_i
  
  phrase = phrase_string
  
  encoded = nil
  if (!phrase.nil? && shift > 0)
    encoded = "Encoded phrase: #{caesar_cipher(phrase, shift)}"
  end
  
  erb :index, :locals => { :encoded => encoded }
end
  