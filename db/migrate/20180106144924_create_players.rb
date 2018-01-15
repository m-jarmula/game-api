class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :user, foreign_key: true
      t.integer :hp, default: 100, null: false
      t.integer :xp, default: 0, null: false
      t.float :x, default: 200, null: false
      t.float :y, default: 400, null: false
      t.string :name

      t.timestamps
    end
  end
end
