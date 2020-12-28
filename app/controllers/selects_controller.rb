class SelectsController < ApplicationController
  def new
   @select = Select.new
  end

  def create
    Select.create(select_params)
  end

  def search
  end

  private 
    def select_params
      params.require(:select).permit(:feeling_id,:busy_id,:weather_id, :todo_id)
    end
end
