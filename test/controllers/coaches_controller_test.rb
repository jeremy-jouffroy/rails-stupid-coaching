require 'test_helper'

class CoachesControllerTest < ActionDispatch::IntegrationTest
  test "should get response" do
    get coaches_response_url
    assert_response :success
  end

end
