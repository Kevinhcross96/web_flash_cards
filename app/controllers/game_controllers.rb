post '/deck/:id/game' do
  create_game
  redirect "/deck/#{params[:id]}/guess/new"
end

before '/deck/:id' do
  find_user
  find_game
end

get '/deck/:id/guess/new' do
  draw_card
  erb :'guesses/new'
end

post '/deck/:id/card' do

end
