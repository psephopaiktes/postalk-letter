require 'sinatra'

get '/' do
  'Hello'
end

get '/letter_front' do
  @letter = Letter.new
  @letter.message = params['message']
  @letter.receiver_postal_code = params['receiver_postal_code']
  @letter.receiver_name = params['receiver_name']
  @letter.receiver_address = params['receiver_address']
  @letter.sender_postal_code = params['sender_postal_code']
  @letter.sender_name = params['sender_name']
  @letter.sender_address = params['sender_address']
  erb :letter_front
end

get '/letter_back' do
  @letter = Letter.new
  @letter.message = params['message']
  @letter.receiver_postal_code = params['receiver_postal_code']
  @letter.receiver_name = params['receiver_name']
  @letter.receiver_address = params['receiver_address']
  @letter.sender_postal_code = params['sender_postal_code']
  @letter.sender_name = params['sender_name']
  @letter.sender_address = params['sender_address']
  erb :letter_back
end

class Letter
  attr_accessor :message, :receiver_postal_code, :receiver_name, :receiver_address, :sender_postal_code, :sender_name, :sender_address
end
