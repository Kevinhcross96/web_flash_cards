class Game < ApplicationRecord
  belongs_to :user
  belongs_to :deck
  has_many :guesses
  has_many :guessed_cards, through: :guesses, source: :card


  validates :deck, presence: true

  def available_cards
    # refactor
    self.deck.cards.each{|c| c}
  end

  def unanswered_cards
    card_pool = available_cards
    self.guesses.to_ary.each do |guess|
      if guess.guessed_answer == guess.card.answer
        card_pool.delete guess.card
      end
    end
    card_pool
  end

  def first_guess_correct_count
    counter = 0
    card_pool = available_cards
    correct_guessed_card = []
    self.guesses.to_ary.each do |guess|
      if guess.guessed_answer == guess.card.answer
          correct_guessed_card << guess.card
      end
    end
    correct_guessed_card.each do |card|
      something =  card.card_from_game(self.id)
      if something.length == 1
        counter += 1
      end
    end
    counter
  end

end
