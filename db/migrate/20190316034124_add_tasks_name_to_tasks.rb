class AddTasksNameToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :tasks_name, :json
  end
end
