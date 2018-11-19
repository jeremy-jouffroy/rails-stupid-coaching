require 'test_helper'

class TraineesControllerTest < ActionDispatch::IntegrationTest
  test "should get question" do
    get trainees_question_url
    assert_response :success
  end

end
