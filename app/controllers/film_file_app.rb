# Film File Controller
class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :"films/index"
  end

  get '/films/:id' do
    @film = Film.find(:id)
    erb :"films/show"
  end
end
