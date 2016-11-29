class SpotsController < ApplicationController

  def index
    @spots = Spot.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@spots) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @alert_message = "You are viewing #{@spot.name}"
  end
end
