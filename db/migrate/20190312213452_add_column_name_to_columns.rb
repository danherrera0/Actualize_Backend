class AddColumnNameToColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :columns, :column_name, :string
  end
end
