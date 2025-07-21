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

    # FIX: Changed "Title" to "Caption" to match your controller's strong params
    fill_in "Caption", with: "My first post"
    fill_in_rich_text_area "Content", with: "This is the body of the first post."
    click_on "Submit"

    assert_text "Post was successfully created"
  end

  test "should update post" do
    visit post_path(@post, locale: I18n.default_locale)
    click_on "Edit", match: :first

    # FIX: Changed "Title" to "Caption" to match your controller's strong params
    fill_in "Caption", with: "Updated caption"
    page.execute_script("document.querySelector('trix-editor').editor.setSelectedRange([0, document.querySelector('trix-editor').editor.getDocument().toString().length]);")
    page.execute_script("document.querySelector('trix-editor').editor.insertString('Updated body');")
    page.execute_script("document.querySelector('trix-editor').dispatchEvent(new Event('input', { bubbles: true }));")
    click_on "Submit"

    assert_text "Post was successfully updated"
  end

  test "should destroy post" do
    visit post_path(@post, locale: I18n.default_locale)

    accept_confirm do
      click_on "Destroy this post", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end