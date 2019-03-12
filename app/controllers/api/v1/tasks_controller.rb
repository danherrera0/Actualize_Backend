class Api::V1::TasksController < ApplicationController
  def index
    @tasks = Task.all

    render json: @tasks, status: :ok
  end

  def create
    Task.create(task_params)

  end

  private

  def task_params
    params.require(:task).permit(:user_id, :column_id, :completed, :content)
  end

end
