class CreateGameplays < ActiveRecord::Migration[6.0]
  def change
    create_table :gameplays do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :game, null: false, foreign_key: true
      t.string :winner

      t.timestamps
    end
  end
end
