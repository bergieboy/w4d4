class UsersController < ApplicationController


  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(users_params)

    if @user.save
      login(@user)
      redirect_to users_url
    else
      flash[:errors] = ["Credentials did not meet requirements."]
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end

end
