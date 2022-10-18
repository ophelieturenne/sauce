require "test_helper"

class AidsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aids_index_url
    assert_response :success
  end

  test "should get show" do
    get aids_show_url
    assert_response :success
  end
end
