require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    'Basic Page'
  end

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{(@number * @number).to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = ""
    @number.times do
      @phrase += params[:phrase]
    end
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{:word1} #{:word2} #{:word3} #{:word4} #{:word5}"
  end
end
