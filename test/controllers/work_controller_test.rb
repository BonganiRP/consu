require 'test_helper'

class WorkControllerTest < ActionDispatch::IntegrationTest
  test "should get services" do
    get work_services_url
    assert_response :success
  end

end
