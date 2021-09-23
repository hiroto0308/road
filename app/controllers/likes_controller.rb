class LikesController < ApplicationController
  before_action :post_params

  def create
    Like.create(user_id: current_user.id, rooad_id: params[:id])
  end

  def destroy
    Like.find_by(user_id: current_user.id, rooad_id: params[:id]).destroy
  end

  private

  def post_params
    @rooad = Rooad.find(params[:id])
  end
end
