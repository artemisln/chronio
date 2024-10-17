require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get tos" do
    get pages_tos_url
    assert_response :success
  end

  test "should get privacy-policy" do
    get pages_privacy-policy_url
    assert_response :success
  end
end
