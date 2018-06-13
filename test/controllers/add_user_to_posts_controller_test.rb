require 'test_helper'

class AddUserToPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_user_to_post = add_user_to_posts(:one)
  end

  test "should get index" do
    get add_user_to_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_add_user_to_post_url
    assert_response :success
  end

  test "should create add_user_to_post" do
    assert_difference('AddUserToPost.count') do
      post add_user_to_posts_url, params: { add_user_to_post: { user_id: @add_user_to_post.user_id } }
    end

    assert_redirected_to add_user_to_post_url(AddUserToPost.last)
  end

  test "should show add_user_to_post" do
    get add_user_to_post_url(@add_user_to_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_user_to_post_url(@add_user_to_post)
    assert_response :success
  end

  test "should update add_user_to_post" do
    patch add_user_to_post_url(@add_user_to_post), params: { add_user_to_post: { user_id: @add_user_to_post.user_id } }
    assert_redirected_to add_user_to_post_url(@add_user_to_post)
  end

  test "should destroy add_user_to_post" do
    assert_difference('AddUserToPost.count', -1) do
      delete add_user_to_post_url(@add_user_to_post)
    end

    assert_redirected_to add_user_to_posts_url
  end
end
