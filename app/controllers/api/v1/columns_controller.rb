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

  def show
    @column = Column.find(params[:id])

    render json: @column, status: :ok
  end



end
