require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url(locale: I18n.default_locale)
    assert_response :success
  end

  test "should get about" do
    get pages_about_url(locale: I18n.default_locale)
    assert_response :success
  end

  test "should get tos" do
    get pages_tos_url(locale: I18n.default_locale)
    assert_response :success
  end

  test "should get privacy-policy" do
    get pages_privacy_policy_url(locale: I18n.default_locale)
    assert_response :success
  end
end
