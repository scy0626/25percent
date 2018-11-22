require 'test_helper'

class PercentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get percent_index_url
    assert_response :success
  end

end
