class UsersController < ApplicationController
  private
  def user_params
    params.require(:user).permit(:nickname,  :gender_id, :profile,  :image, :area_id, :email,  :password, :password_confirmation)
  end
end
