# frozen_string_literal: true

# CarsController
class CarsController < ApplicationController
  def index
    @brands = Brand.all

    @search = Car.ransack(params[:q])
    @cars = @search.result(distinct: true)

    @cars = @cars.order('created_at DESC').page(params[:page]).per(9)
  end
end
