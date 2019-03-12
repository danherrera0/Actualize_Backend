class Api::V1::ColumnsController < ApplicationController

  def index
    @columns = Column.all

    render json: @columns, status: :ok
  end

  def show
    @column = Column.find(params[:id])

    render json: @column, status: :ok
  end



end
