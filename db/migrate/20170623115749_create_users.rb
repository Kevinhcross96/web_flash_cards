class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email, NULL: false
      t.string :password_hash, NULL: false
      t.timestamps
    end            
  end
end
