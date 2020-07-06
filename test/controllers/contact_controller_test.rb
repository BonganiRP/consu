require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get call" do
    get contact_call_url
    assert_response :success
  end

end
