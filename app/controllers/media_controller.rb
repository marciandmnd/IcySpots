class MediaController < ApplicationController
  before_action :set_s3_direct_post, only: [:new]

  def new
    @medium = Medium.new
    @spot = Spot.find(params[:spot_id])
  end

  def create
    @spot = Spot.find(params[:spot_id])
    medium = current_user.media.build
    medium.s3_path = params[:file]
    medium.spot = @spot
    medium.save
    redirect_to spot_path(@spot)
  end

  private
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
  end
end
