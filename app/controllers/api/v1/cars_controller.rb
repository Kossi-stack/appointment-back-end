class Api::V1::CarsController < ApplicationController
  before_action :set_car, only: %i[destroy show]

  def index
    @cars = current_user.cars.all
  end

  def create
    @car = current_user.cars.new(car_params)

    if @car.save!
      render :create, status: :created
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @car.destroy
      render json: { message: 'car has been successfully deleted' }
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  private

  def set_car
    @car = car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :model, :engine, :image, :price, :seats, :year, :industry_id, :user_id)
  end
end
