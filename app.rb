require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number * number
    "#{square}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    result = ''
    number.times do
       result += "#{phrase}"
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    result = ''
    # result = []
    #result.join(' ') + "."
  

    params.each do |key, value|
      result += "#{value} "
    end
    result[-1] = "."
    result
  end

end
