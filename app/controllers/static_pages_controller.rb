class StaticPagesController < ApplicationController
  def top
    if user_signed_in?
      redirect_to rooads_path
    else
      render :top
    end
  end
end
