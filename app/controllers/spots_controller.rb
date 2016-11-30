class SpotsController < ApplicationController
  def index
    @spots = Spot.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@spots) do |spot, marker|
      marker.lat spot.latitude
      marker.lng spot.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      marker.infowindow render_to_string( :template => "spots/infobox", locals: {:spot => spot}, layout: false)
    end
  end

  def show
    @spot = Spot.find(params[:id])
    @hash = Gmaps4rails.build_markers(@spot) do |spot, marker|
      marker.lat spot.latitude
      marker.lng spot.longitude
    end

    @media = Medium.where(spot: @spot)
  end
end
