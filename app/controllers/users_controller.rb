class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.deliver_registration_confirmation(@user)
      flash[:notice] = "Successfully registered"
      redirect_to user_path(@user)
    else
      render :action => "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
