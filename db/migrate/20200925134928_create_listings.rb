class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :game_id
      t.integer :user_id
      t.string :condition
      t.string :quality
      t.integer :price
      t.boolean :availability

      t.timestamps
    end
  end
end
