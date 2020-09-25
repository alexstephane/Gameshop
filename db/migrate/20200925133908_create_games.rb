class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :brand
      t.integer :release_date
      t.string :rating
      t.string :console_type

      t.timestamps
    end
  end
end
