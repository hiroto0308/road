class RooadsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rooad, only: [:destroy, :show, :edit, :update]
  before_action :login_user, only: [:destroy, :edit]

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

  def edit
  end

  def update
    if @rooad.update(rooad_params)
      redirect_to rooad_path
    else
      render :edit
    end
  end

  def destroy
    @rooad.destroy
    redirect_to rooads_path
  end

  private

  def rooad_params
    params.require(:rooad).permit(:status_id, :title, :detail,
                                  repetitions_attributes: [:id, :name, :period, :memo, :_destroy]).merge(user_id: current_user.id)
  end

  def set_rooad
    @rooad = Rooad.find(params[:id])
  end

  def login_user
    redirect_to root_path unless current_user.id == @rooad.user_id
  end
end
