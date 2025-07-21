require "application_system_test_case"
require "devise/test/integration_helpers"

class PostsTest < ActionDispatch::SystemTestCase
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    @post = posts(:one)
    sign_in @user
  end

  test "visiting the index" do
    visit posts_path(locale: I18n.default_locale)
    assert_selector ".post", text: @post.body.to_plain_text, wait: 5 # Add a wait time
  end

  test "should create post" do
    visit posts_path(locale: I18n.default_locale)
    click_on "New post"

    fill_in "Title", with: "My first post"
    fill_in_rich_text_area "Content", with: "This is the body of the first post."
    click_on "Submit"

    assert_text "Post was successfully created"
  end

  test "should update post" do
    visit post_path(@post, locale: I18n.default_locale)
    click_on "Edit", match: :first

    fill_in "Title", with: "Updated title"
    fill_in_rich_text_area "Content", with: "Updated body"
    click_on "Submit"

    assert_text "Post was successfully updated"

    assert_text "Updated title"
  end

  test "should destroy post" do
    visit post_path(@post, locale: I18n.default_locale)

    click_on "Destroy this post", match: :first

    assert_text "Post was successfully destroyed"
  end
end