require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @user = users(:one)
    sign_in @user
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url(locale: I18n.default_locale)
    assert_response :success
  end

  test "should get new" do
    get new_post_url(locale: I18n.default_locale)
    assert_response :success
  end

  test "should create post" do
    assert_difference("Post.count") do
      post posts_url(locale: I18n.default_locale), params: { post: { caption: @post.caption, user_id: @post.user_id } }
    end

    assert_redirected_to root_path(locale: I18n.default_locale)
    follow_redirect!
    assert_response :success
  end

  test "should show post" do
    get post_url(@post.id, locale: I18n.default_locale)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post.id, locale: I18n.default_locale)
    assert_response :success
  end

  # Uncomment the following tests when posts are implemented completely

  # test "should update post" do
  #   patch post_url(@post.id, locale: I18n.default_locale), params: { post: { caption: @post.caption, user_id: @post.user_id } }
  #   assert_redirected_to post_url(@post.id, locale: I18n.default_locale)
  # end

  # test "should destroy post" do
  #   assert_difference("Post.count", -1) do
  #     delete post_url(@post.id, locale: I18n.default_locale)
  #   end

  #   assert_redirected_to posts_url(locale: I18n.default_locale)
  # end
end
