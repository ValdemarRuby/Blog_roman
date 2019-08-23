class ApplicationController < ActionController::Base
  # при переходе через devise_controller будет выполнен следующий фильтр
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
