class Card < ApplicationRecord
  belongs_to :deck
  has_many :guesses

























































def self.games_specific_cards(game_id)
  cards = Card.where(game_id: game_id)
  cards.map{|card| card.guesses}
end
end
