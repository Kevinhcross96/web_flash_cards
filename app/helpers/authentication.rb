helpers do
  def create
    @user = User.new(params[:user_information])
    @user.password = params[:user_information][:password]
    @user.save!
  end
  def login
    @user = User.find_by(email_address: params[:user_information][:email_address])
      if @user && @user.password == params[:user_information][:password]
        session[:id] = @user.id
        redirect '/entries'
     else
        redirect '/sessions/new'
      end
  end
  def logged_in?
    !!@user
  end
  def find_user
    if session[:id]
      @user = User.find(session[:id])
    end
  end


  def entry_authentication
    @dummy_item.user_id == session[:id] ? () : (redirect '/homepage')
  end
end
