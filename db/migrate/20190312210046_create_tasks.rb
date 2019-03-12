class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.boolean :completed
      t.integer :user_id
      t.integer :column_id
      t.string :content
      t.timestamps
    end
  end
end
