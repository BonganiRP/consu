require 'test_helper'

class SchoolControllerTest < ActionDispatch::IntegrationTest
  test "should get academy" do
    get school_academy_url
    assert_response :success
  end

end
