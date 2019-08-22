class ApplicationController < ActionController::Base
  # при переходе через devise_controller будет выполнен следующий фильтр
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitiez.for(:sign_up) << :username
end
