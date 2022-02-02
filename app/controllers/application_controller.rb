class ApplicationController < ActionController::API

  before_action :configure_permitted_parameters, if: :devise_controller?


  rescue_from ActiveRecord::RecordNotUnique, with: :record_not_unique

  def render_jsonapi_response(resource)
    if resource.errors.empty?
      render jsonapi: resource
    else
      render jsonapi_errors: resource.errors, status: 400
    end
  end

  def record_not_unique(message)
    render json: {
      errors: [
        {
          status: '400',
          title: message
        }
      ]
    }, status: 400
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:registration, keys: [:name, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :email, :password])
  end

    # before action authentication
  def authenticate_user!
    if request.headers['Authorization'].present?
      token = request.headers['Authorization'].split.last
      begin
        @decoded = JsonWebToken.decode(token)
        @current_user = User.find(@decoded[:user_id])
      rescue ActiveRecord::RecordNotFound => e
        render json: { errors: e.message }, status: :unauthorized
      end
    else
      render json: { errors: 'Not authenticated' }, status: :unauthorized
    end
  end
end
