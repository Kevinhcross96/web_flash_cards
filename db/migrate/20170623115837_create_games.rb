class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.user_id :integer
      t.deck_id :integer, NULL: false 
      t.timestamps
    end
  end
end
