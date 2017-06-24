helpers do
  def create_game
      @game = Game.create(params[:game_info])
      find_user
      logged_in? ? (@game.user = @user) : ()
      session[:game_id] = @game.id
  end
  def find_game
    if session[:game_id]
      @game ||= Game.find(session[:game_id])
    end
  end

  def draw_card
    @card = Card.first
  end
end
