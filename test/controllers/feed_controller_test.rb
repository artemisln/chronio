require "test_helper"

class FeedControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get feed_show_url
    assert_response :success
  end
end
