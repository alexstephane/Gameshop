class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :console_type_id
      t.string :quality
      t.string :condition
      t.integer :listed_price
      t.boolean :availability

      t.timestamps
    end
  end
end
