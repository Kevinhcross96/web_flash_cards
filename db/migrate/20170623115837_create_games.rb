class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :deck_id, NULL: false
      t.timestamps
    end
  end
end
