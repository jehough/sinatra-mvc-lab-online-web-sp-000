require_relative 'config/environment'

class App < Sinatra::Base
  get '/user_input' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_latin = PigLatinizer.new
    @translated = pig_latin.piglatinize(params[:text])
    erb :results
  end
end
