require "test_helper"

class QuizzsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quizzs_index_url
    assert_response :success
  end

  test "should get show" do
    get quizzs_show_url
    assert_response :success
  end
end
