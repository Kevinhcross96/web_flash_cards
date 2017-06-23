class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer :card_id, NULL: false
      t.integer :game_id, NULL: false
      t.string :guessed_answer, NULL: false
      t.timestamps
    end
  end
end
