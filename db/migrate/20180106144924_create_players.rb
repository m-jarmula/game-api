class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :user, foreign_key: true
      t.integer :hp
      t.float :x
      t.float :y
      t.string :name

      t.timestamps
    end
  end
end
