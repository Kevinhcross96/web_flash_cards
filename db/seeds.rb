User.delete_all
Game.delete_all
Card.delete_all
Deck.delete_all
Guess.delete_all

# 10.times do
#   User.create(email: Faker::Internet.safe_email, password: 'password')
# end

3.times do
  Deck.create(name: Faker::GameOfThrones.house)
end
#
# Game.create(deck_id: 1, user_id: 1)
# Game.create(deck_id: 2, user_id: 2)
# Game.create(deck_id: 3, user_id: 3)
#
5.times do
  Card.create(question: "is true true?", answer: "true", deck_id: 1)
end

5.times do
  Card.create(question: "is true true?", answer: "true", deck_id: 2)
end

5.times do
  Card.create(question: "is true true?", answer: "true", deck_id: 3)
end

Guess.create( card_id: 2, game_id: 1, guessed_answer: "true")
Guess.create( card_id: 1, game_id: 1, guessed_answer: "Cheese")
Guess.create( card_id: 6, game_id: 2, guessed_answer: "true")
Guess.create( card_id: 7, game_id: 2, guessed_answer: "What?")
Guess.create( card_id: 12, game_id: 3, guessed_answer: "true")
Guess.create( card_id: 11, game_id: 3, guessed_answer: "Pie")
