class PagesController < ApplicationController
  def index
    @featured_spots = Spot.limit(3)
  end

  def profile
    if !user_signed_in?
      redirect_to new_user_session_path
    end
    @media = Medium.where(user: current_user)
  end

  def profile_show
    @user = User.find(params[:id])
  end
end
