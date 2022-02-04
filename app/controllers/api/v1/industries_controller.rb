class Api::V1::IndustriesController < ApplicationController
  before_action :set_industry, only: %i[destroy show]

  def index
    @industries = current_user.industries.all
  end

  def create
    @industry = current_user.industries.new(industry_params)

    if @industry.save!
      render :create, status: :created
    else
      render json: @industry.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @industry.destroy
      render json: { message: 'industry has been successfully deleted' }
    else
      render json: @industry.errors, status: :unprocessable_entity
    end
  end

  private

  def set_industry
    @industry = industry.find(params[:id])
  end

  def industry_params
    params.require(:industry).permit(:name, :description, :image, :user_id)
  end
end
