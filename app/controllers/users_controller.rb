class UsersController < ApplicationController
  # befor_action :require_login

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[]
      questions_path
    else
      @errors = @user.errors.full_messages
       render 'new'
    end
  end

  def login
    render 'login'
  end

  def logout

  end


  private

  def user_params
    params[:user].permit(:username, :password, :email)
  end
end


