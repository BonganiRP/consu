require 'test_helper'

class EnterControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get enter_login_url
    assert_response :success
  end

end
