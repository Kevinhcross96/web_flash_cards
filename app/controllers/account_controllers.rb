get '/account' do
  find_user
  @games= Game.where(user_id: @user.id)
  erb :'account/show'
end
