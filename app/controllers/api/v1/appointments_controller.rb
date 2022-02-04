class Api::V1::AppointmentsController < ApplicationController
  def index
    @appointments = current_user.appointments
    render json: @appointments
  end

  def create
    @appointment = current_user.appointments.new(appointment_params)
    if @appointment.save
      render json: @appointment
    else
      render json: { errors: @appointment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    render json: @appointment
  end

  private

  def appointment_params
    params.require(:appointment).permit(:start_time, :end_time, :car_id)
  end
end
