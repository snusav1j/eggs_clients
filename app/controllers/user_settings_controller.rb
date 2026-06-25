class UserSettingsController < ApplicationController

  def index

  end

  def show

  end

  def set_sidebar_state
    @updated = current_user.set_sidebar_state(param_b(:sidebar_hidden))
    respond_to :js
  end
  
  private

end