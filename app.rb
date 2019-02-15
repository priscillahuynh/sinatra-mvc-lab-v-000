require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do 
    translate = PigLatinizer.new
    @translated_phrase = translate.to_pig(params[:user_phrase])
    
    erb :piglatinized
  end

end