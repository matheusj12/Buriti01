class UsersController < ApplicationController

  def update_theme
    current_user.update(theme: params[:theme])
    redirect_to root_path
  end

end

