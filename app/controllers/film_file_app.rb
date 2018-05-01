# Film File Controller
class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :"films/index"
  end
end
