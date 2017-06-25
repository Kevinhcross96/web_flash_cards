get '/cards/:id' do
  #gets params from url
  @card = Card.find(params[:id]) #define instance variable for view
  erb :'cards/show' #show single card view
end

post '/cards/new' do
  erb :'cards/new'
end

post '/cards/new/temp' do
  create_deck
  erb :'cards/new'
end

post '/cards/new/temp2' do
  create_card
  erb :'cards/new'
end

post '/account' do
  find_user
  @games= Game.where(user_id: @user.id)
  erb :'account/show'
end
