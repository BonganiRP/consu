require 'test_helper'

class StoryControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get story_about_url
    assert_response :success
  end

end
