class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses
























































def card_from_game(game_id)
  Guess.where(card_id: self.id, game_id: game_id)
end

end
