class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.references :user, null: false, foreign_key: true
      t.string :text, null: false
      t.timestamps
    end
  end
end
