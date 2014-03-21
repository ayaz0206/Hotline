class UsersController < ApplicationController
  def create
    User.create(user_params)
  end

  def show
  	@profile_user = User.find(params[:id])
  	@question = Question.find(params[:id])
 	end


  private
  def user_params
    params.require(:user).permit(:name, :email, :first_name, :last_name, :image, :provider, :uid, :refresh_token, :access_token, :expires)
  end
end
