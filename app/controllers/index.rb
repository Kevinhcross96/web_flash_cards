get '/' do
  redirect '/decks'
end

get '/decks' do
  @decks = Deck.all
  erb :decks
end
