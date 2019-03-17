class RemoveTaskNameFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :task_name, :string
  end
end
