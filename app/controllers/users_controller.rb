class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_attributes)
    if @user.save
      Resque.enqueue(RegistrationEmailJob, @user)
      redirect_to new_user_path, notice: "Welcome #{@user.email}!"
    else
      render 'new'
    end

  end

  private

  def user_attributes
    params.require(:user).permit(:email)
  end
end