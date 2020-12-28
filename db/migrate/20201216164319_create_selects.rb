class CreateSelects < ActiveRecord::Migration[6.0]
  def change
    create_table :selects do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :feeling_id, null: false
      t.integer :busy_id, null: false
      t.integer :weather_id, null: false
      t.integer :todo_id, null:false
      t.timestamps
    end
  end
end
