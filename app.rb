require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    user_word = params["user_phrase"]
    # word = PigLatinizer.new
    @pig_latin = PigLatinizer.new.to_pig_latin(user_word)

    erb :pig_latin
  end
end