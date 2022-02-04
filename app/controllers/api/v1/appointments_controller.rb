class Api::V1::AppointmensController < ApplicationController
  before_action :set_appointmen, only: :destroy

  def index
    @appointmens = current_user.appointmens
  end

  def create
    @appointmen = current_user.appointmens.new(appointmen_params)

    if @appointmen.save
      render :create, status: :created
    else
      render json: @appointmen.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @appointmen.destroy
      render json: { message: 'appointmen has been successfully deleted' }
    else
      render json: @appointmen.errors, status: :unprocessable_entity
    end
  end

  private

  def set_appointmen
    @appointmen = appointmen.find(params[:id])
  end

  def appointmen_params
    params.require(:appointmen).permit(:status, :start_time, :end_time, :user_id, :car_id)
  end
end
