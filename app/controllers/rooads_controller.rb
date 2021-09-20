class RooadsController < ApplicationController
  before_action :set_rooad, only: [:destroy, :show, :edit, :update]

  def index
    @rooads = Rooad.includes(:user).order(created_at: :desc)
    if user_signed_in?
      render :index
    else
      redirect_to root_path
    end
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

  def show
  end

  private

  def rooad_params
    params.require(:rooad).permit(:status_id, :title, :detail,
                                  repetitions_attributes: [:name, :period, :memo, :_destroy]).merge(user_id: current_user.id)
  end

  def set_rooad
    @rooad = Rooad.find(params[:id])
  end  
end
