class UsersController < ApplicationController
  # befor_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    puts params
    if @user.save
      questions_path
    else
      p @errors = @user.errors.full_messages
      redirect_to(:back)
    end
  end


  private

  def user_params
    params[:user].permit(:username, :password, :email)
  end
end


