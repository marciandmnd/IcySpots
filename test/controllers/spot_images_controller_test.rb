require 'test_helper'

class SpotImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spot_images_new_url
    assert_response :success
  end

  test "should get create" do
    get spot_images_create_url
    assert_response :success
  end

end
