require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end

  # *** Remember that values in params always come in as strings,
  # your return value for the route should also be a string (use .to_i and .to_s).
  # returns that phrase in a single string the number of times given.
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    @string = @phrase * @number
      "#{@string}"
  end

  # returns a string containing all five words (i.e. word1 word2 word3 word4 word5)
  get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # accepts an operation (add, subtract, multiply or divide) and 
  # performs the operation on the two numbers provided, returning a String. 
  # For example, '/add/1/2' should render 3 as a String.
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      result = (num1 + num2).to_s
    elsif params[:operation] == "subtract"
     result = (num1 - num2).to_s
    elsif params[:operation] == "multiply"
      result = (num1 * num2).to_s
    else params[:operation] == "divide"
      result = (num1 / num2).to_s
    # else params[:operation] == "divide"
    #   @result = @num1 / @num2
    #   @result.to_s
    #   "#{@result}"
    end 
  end
end