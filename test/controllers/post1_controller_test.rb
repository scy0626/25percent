require 'test_helper'

class Post1ControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get post1_new_url
    assert_response :success
  end

  test "should get create" do
    get post1_create_url
    assert_response :success
  end

  test "should get index" do
    get post1_index_url
    assert_response :success
  end

  test "should get update" do
    get post1_update_url
    assert_response :success
  end

  test "should get show" do
    get post1_show_url
    assert_response :success
  end

  test "should get edit" do
    get post1_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get post1_destroy_url
    assert_response :success
  end

end
