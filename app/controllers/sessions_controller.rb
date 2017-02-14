class SessionsController < ApplicationController
  def new
    #login form get
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])

    if @user.authenticate(user_params[:password])
      session[:current_user_id] = @user.id
      redirect_to questions_path
    else
      render 'new'
    end
  end

  def delete
    #logout post
    session[:current_user_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to questions_path
  end

  private

  def user_params
    params.require(:sessions).permit(:email, :password)
  end

end
