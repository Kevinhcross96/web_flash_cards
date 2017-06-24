get '/cards/:id' do
  #gets params from url
  @card = Card.find(params[:id]) #define instance variable for view
  erb :'cards/show' #show single card view
end
