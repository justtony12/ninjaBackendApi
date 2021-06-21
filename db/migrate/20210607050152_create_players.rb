class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :score
      t.belongs_to :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
