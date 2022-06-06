class CarsController < ApplicationController
  def index
    @brands = Brand.all

    @c = Car.ransack(params[:q])
    @cars = @c.result(distinct: true)
  end
end
