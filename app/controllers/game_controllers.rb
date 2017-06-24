post '/deck/:deck_id/game' do
  create_game
  redirect "/guess/new"
end




# refeactor using a before do

get '/guess/new' do
  find_user
  find_game
  draw_card
  erb :'guesses/new'
end

get '/game/stats' do
  find_game
  erb :'games/stats'
end

post '/guess/card/:card_id' do
  @guess = create_guess
  redirect "/card/#{params[:card_id]}/guess/#{@guess.id}"
end

get '/card/:card_id/guess/:guess_id' do
  find_card
  find_guess
  find_game
  erb :'cards/show'
end
