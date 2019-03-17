class AddTaskIdToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :task_id, :string
  end
end
