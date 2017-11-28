require 'test_helper'

class SpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    spot = create(:spot)
    get spot_path(spot)
    assert_response :success
  end

  test "should display spot name" do
    spot = create(:spot)
    get spot_path(spot)
    assert_select ".spot-name", spot.name
  end
end
