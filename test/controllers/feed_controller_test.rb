require "test_helper"

class FeedControllerTest < ActionDispatch::IntegrationTest

  test "should get show" do
    get root_path(locale: I18n.default_locale)
    assert_response :success
  end
end
