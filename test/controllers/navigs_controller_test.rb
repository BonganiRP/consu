require 'test_helper'

class NavigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @navig = navigs(:one)
  end

  test "should get index" do
    get navigs_url
    assert_response :success
  end

  test "should get new" do
    get new_navig_url
    assert_response :success
  end

  test "should create navig" do
    assert_difference('Navig.count') do
      post navigs_url, params: { navig: { home: @navig.home } }
    end

    assert_redirected_to navig_url(Navig.last)
  end

  test "should show navig" do
    get navig_url(@navig)
    assert_response :success
  end

  test "should get edit" do
    get edit_navig_url(@navig)
    assert_response :success
  end

  test "should update navig" do
    patch navig_url(@navig), params: { navig: { home: @navig.home } }
    assert_redirected_to navig_url(@navig)
  end

  test "should destroy navig" do
    assert_difference('Navig.count', -1) do
      delete navig_url(@navig)
    end

    assert_redirected_to navigs_url
  end
end
