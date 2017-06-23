class Game < ApplicationRecord
  belongs_to :user
  belongs_to :deck
  has_many :guesses
end
