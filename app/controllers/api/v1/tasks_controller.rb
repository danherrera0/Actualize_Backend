class Api::V1::TasksController < ApplicationController

  def index
    @tasks = Task.all
    @tasks = @tasks.map do |task|
      {
        "task-#{task.id}":{
          task_id: "task-#{task.id}",
          completed: task.completed,
          column_id: task.column_id,
          user_id: task.user_id,
          content: task.content
        }
      }
    end

    render json: @tasks, status: :ok
  end

  def create
    Task.create(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:id, :user_id, :column_id, :completed, :content, :tasks_name, :task_id)
  end

end
