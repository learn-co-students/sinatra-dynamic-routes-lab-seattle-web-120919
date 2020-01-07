require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    params[:name].reverse
  end

  get '/square/:number' do 
    numsquared = params[:number].to_i**2
    numsquared.to_s
  end

  get '/say/:number/:phrase' do 
    chunkyphrase = ""
    params[:number].to_i.times do
      chunkyphrase += params[:phrase]
    end
    chunkyphrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    sentence = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    sentence.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do 
    @num1 = params[:number1].to_i 
    @num2 = params[:number2].to_i
    @operation = params[:operation] 
    if @operation == "add"
      "#{@num1 + @num2}" 
    elsif @operation == "subtract"
      "#{@num1 - @num2}" 
    elsif @operation == "multiply"
      "#{@num1 * @num2}" 
    elsif @operation == "divide"
      "#{@num1 / @num2}" 
    end
  end

end