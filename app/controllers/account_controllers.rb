get '/account' do
  find_user
  erb :'account/show'
end
