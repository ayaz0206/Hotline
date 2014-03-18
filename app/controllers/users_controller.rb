class UsersController < ApplicationController
  def create
    User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :first_name, :last_name, :image, :provider, :uid, :refresh_token, :access_token, :expires)
  end
end
