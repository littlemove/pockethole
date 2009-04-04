class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :update]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_back_or_default new_user_url
    else
      render :action => :new
    end
  end

  def show
    @user = @current_user
  end

  def update
    @user = @current_user
    
    @user.holes << Hole.from_raw(params[:raw_hole])    
    if @user.update_attributes(params[:user])
      flash[:notice] = "Al bujero!"
      redirect_to :action => 'show'
    else
      render :action => :edit
    end
  end
end
