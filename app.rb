require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @translated = PigLatinizer.new.piglatinize(params[:text])
    erb :results
  end
end
