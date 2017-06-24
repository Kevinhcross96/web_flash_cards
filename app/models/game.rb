class Game < ApplicationRecord
  belongs_to :user
  belongs_to :deck
  has_many :guesses
  has_many :guessed_cards, through: :guesses, source: :card


  validates :deck, presence: true

  def availible_cards
    # refactor
    self.deck.cards.each{|c| c}
  end

  def unanswered_cards
    card_pool = availible_cards
    self.guesses.to_ary.each do |guess|
      if guess.guessed_answer == guess.card.answer
        card_pool.delete guess.card
      end
    end
    card_pool
  end

  def first_guess_correct_count
    counter = 0
      binding.pry
    self.guessed_cards do |card|

    end
    counter
  end

end
