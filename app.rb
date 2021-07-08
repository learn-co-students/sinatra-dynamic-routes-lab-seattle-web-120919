require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i ** 2
    "#{@square.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @answer = ""
    # binding.pry
    @number.times do
      @answer += "#{@phrase} "
    end
    @answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
 
   @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
  end

  get "/:operation/:number1/:number2" do
    @answer = 0
    if params[:operation] == "add"
      @answer = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @answer = params[:number1].to_i / params[:number2].to_i

    end

    @answer.to_s
  end
end