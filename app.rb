require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name_reverse = params[:name].reverse
    "#{@name_reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do 
    n = params[:number].to_i
    say_phrase = ''
    i = 0
    while i < n
      say_phrase += params[:phrase]
      say_phrase += " "
      i +=1
    end  
    "#{say_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    sentance = word1 + " " + word2 + " " + word3 + " " + word4 + " " + word5 + "."
    "#{sentance}"
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    result =''

  case op
    when 'add'
      result = (num1 + num2).to_s
    when 'subtract'
      result = (num1 - num2).to_s
    when 'multiply'
      result = (num1 * num2).to_s
    when 'divide' 
      result = (num1 / num2).to_s
    end

  end


end