require('sinatra');
require('sinatra/contrib/all');
require('pry');
require_relative('./models/game');
also_reload('models/*');

get '/rps/:player1/:player2' do
  game = Game.new()
  @result = game.play(params[:player1], params[:player2])
  erb(:result)
end

get '/' do
 erb(:home)
end

get '/about' do
 erb(:about)
end
