require 'sinatra'

get '/' do
  'Hello'
end

get '/letter_front' do
  @letter = Letter.new
  @letter.postal_code = params['postal_code']
  @letter.message = params['message']
  @letter.receiver_name = params['receiver_name']
  @letter.receiver_address = params['receiver_address']
  @letter.sender_name = params['sender_name']
  @letter.sender_address = params['sender_address']
  erb :letter_front
end

get '/letter_back' do
  @letter = Letter.new
  @letter.message = params['message']
  @letter.postal_code = params['postal_code']
  @letter.message = params['message']
  @letter.receiver_name = params['receiver_name']
  @letter.receiver_address = params['receiver_address']
  @letter.sender_name = params['sender_name']
  @letter.sender_address = params['sender_address']
  erb :letter_back
end

class Letter
  attr_accessor :postal_code, :message, :receiver_name, :receiver_address, :sender_name, :sender_address
end
