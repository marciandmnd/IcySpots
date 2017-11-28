class MediaController < ApplicationController
  # before_action :set_s3_direct_post, only: [:new]

  def new
    @medium = Medium.new
    @spot = Spot.find(params[:spot_id])
    set_s3_direct_post
  end

  def create
    @spot = Spot.find(params[:spot_id])
    medium = current_user.media.build(
      s3_path: params[:file],
      spot: @spot,
      s3_bucket_object_key: params[:key]
    )
    medium.save
    flash[:notice] = "Media added successfully!"
    redirect_to spot_path(@spot)
  end

  def destroy
    medium_id = params[:id]
    medium = Medium.find(medium_id);
    medium.destroy
    flash.now[:notice] = "Media deleted successfully."
    render json: {
      status: 200,
      flash_html: view_context.flash_messages,
      medium_id: medium_id
    }
  end

  private
  def set_s3_direct_post
    @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{@spot.id}/#{SecureRandom.uuid}-${filename}", success_action_status: '201', acl: 'public-read')
  end
end
