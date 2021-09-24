class UsersController < ApplicationController
  def update
    @user = User.find(params[:id])
    if @user.valid?
      @user.update(update_params)
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :gender_id, :profile, :image, :area_id, :email, :password, :password_confirmation)
  end

  def update_params
    params.require(:user).permit(:nickname, :gender_id, :profile, :image, :area_id)
  end
end
