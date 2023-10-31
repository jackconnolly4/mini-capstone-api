require "test_helper"

class ImageControllerTest < ActionDispatch::IntegrationTest
  test "should get url" do
    get image_url_url
    assert_response :success
  end
end
