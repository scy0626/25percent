require 'test_helper'

class VideoBoard1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get video_board1_index_url
    assert_response :success
  end

  test "should get new" do
    get video_board1_new_url
    assert_response :success
  end

  test "should get create" do
    get video_board1_create_url
    assert_response :success
  end

  test "should get update" do
    get video_board1_update_url
    assert_response :success
  end

  test "should get edit" do
    get video_board1_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get video_board1_destroy_url
    assert_response :success
  end

  test "should get show" do
    get video_board1_show_url
    assert_response :success
  end

end
