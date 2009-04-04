class HolesController < ApplicationController
  before_filter :require_user, :only => [:index]

  def index
    @user = @current_user
  end

end
