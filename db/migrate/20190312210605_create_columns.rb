class CreateColumns < ActiveRecord::Migration[5.2]
  enable_extension "hstore"
  def change
    create_table :columns do |t|
      t.string :title
      t.hstore "task_ids", array: true
      t.timestamps
    end
  end
end
