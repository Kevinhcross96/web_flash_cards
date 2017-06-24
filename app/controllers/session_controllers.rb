get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  login
end

get '/game/sessions/new' do
  erb :'sessions/new'
end
