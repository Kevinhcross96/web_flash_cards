get '/users/new' do
  erb :'user/new'
end

post '/users' do
  create_user
  redirect '/sessions/new'
end

get '/users/logout' do
  session[:id] = nil
  @user = nil
  redirect '/sessions/new'
end
