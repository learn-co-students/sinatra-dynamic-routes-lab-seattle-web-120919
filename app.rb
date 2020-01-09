require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end 

  get '/square/:number' do 
    @answer = params[:number].to_i * params[:number].to_i
    "#{@answer}"
  end

  get '/say/:number/:phrase' do 
    string = ""
    params[:number].to_i.times do
      string += params[:phrase]
    end
    string 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      # get '/add/:number1/:number2' do 
      #   sum = params[:number1].to_i + params[number2].to_i
      #   sum.to_s
      # end 
      sum = params[:number1].to_i + params[:number2].to_i
      sum.to_s
    elsif params[:operation] == "subtract"
      ans = params[:number2].to_i - params[:number1].to_i
      ans.to_s
    elsif params[:operation] == "multiply"
      ans = params[:number1].to_i * params[:number2].to_i
      ans.to_s
    else 
      ans = params[:number1].to_i / params[:number2].to_i
      ans.to_s
    end 
  end
end

