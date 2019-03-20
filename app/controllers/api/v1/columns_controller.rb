class Api::V1::ColumnsController < ApplicationController

  def index
    @columns = Column.all
    @columns = @columns.map do |column|
      {
        "column-#{column.id}":{
          id:column.id,
          title:column.title,
          column_name: "column-#{column.id}",
          task_ids: column.tasks
        }
      }
  end
    render json: @columns, status: :ok
  end

  def update
    @column = Column.find(params[:id])
    @column.update(column_params)

  end

  def show
    @column = Column.find(params[:id])
    render json: @column, status: :ok
  end

  private

  def column_params
    params.require(:column).permit(:id, :title, :column_name, :task_ids)
  end

end
