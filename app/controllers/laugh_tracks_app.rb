require_relative '../models/comedian.rb'
require_relative '../models/special.rb'

class LaughTracksApp < Sinatra::Base
set :root, File.expand_path("..", __dir__)

  get '/comedians' do 
    @comedians = Comedian.all
    # @specials = Comedian.specials
    @average = Comedian.comedian_average_age
    erb :index
  end

  get '/comedians/:id' do
    @comedian = Comedian.find_by(age: params[:age])
    erb :show
  end

end
