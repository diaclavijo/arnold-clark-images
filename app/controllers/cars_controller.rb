class CarsController < ApplicationController

  def index
    if params[:car]
      @car = Car.new car_params
    end
  end

  private
    def car_params
      params.require(:car).permit(:registration, :stock_ref)
    end
end
