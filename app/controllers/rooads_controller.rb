class RooadsController < ApplicationController
  def index
    if user_signed_in?
      render :index
    else
      redirect_to root_path
    end
    @roods = Rooad.includes(:user).order(created_at: :desc)
  end

  def new
    @rooad = Rooad.new
    @repetitions = @rooad.repetitions.build
  end

  def create
    @rooad = Rooad.new(rooad_params)
    if @rooad.save
      redirect_to rooads_path
    else
      render :new
    end
  end

  private

  def rooad_params
    params.require(:rooad).permit(:status_id, :title, :detail,
                                  repetitions_attributes: [:name, :period, :memo, :_destroy]).merge(user_id: current_user.id)
  end
end
