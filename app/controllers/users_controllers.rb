get '/users/new' do
  erb :'user/new'
end

post '/users' do
  create_user
  redirect '/session/new'
end

get '/users/logout' do
  session[:id] = nil
  @user = nil
  redirect '/session/new'
end
