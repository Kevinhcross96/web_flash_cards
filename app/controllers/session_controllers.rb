get '/session/new' do
  erb :'sessions/new'
end

post '/session' do
  login
end
