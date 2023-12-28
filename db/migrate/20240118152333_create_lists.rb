class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.string :title, null: false
      t.string :body, null: false
      t.boolean :is_complete, null: false, default: false
      t.timestamps
    end
  end
end
