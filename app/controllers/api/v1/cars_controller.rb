class Api::V1::CarsController < ApplicationController

  def index
    @cars = Car.all
    render json: @cars
  end

  def create
    @car = current_user.cars.new(car_params)
    if @car.save
      render json: @car
    else
      render json: { errors: @car.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    render json: @car
  end

  private

  def car_params
    params.require(:car).permit(:name, :model, :engine, :seats, :price, :image)
  end
end