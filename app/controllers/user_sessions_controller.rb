class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  def new
    if @current_user
      redirect_to home_url
    else
      @user_session = UserSession.new
      render :new
    end
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save      
      redirect_to home_url
    else
      render :action => :new
    end
  end

  def destroy
    current_user_session.destroy    
    redirect_to root_url
  end

end
