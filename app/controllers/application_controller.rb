class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def current_theme
    current_user&.theme || 'light'  # Define o tema padrão como 'light'
  end

  def after_sign_in_path_for(resource)
    home_index_path
  end
end
