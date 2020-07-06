require "application_system_test_case"

class NavigsTest < ApplicationSystemTestCase
  setup do
    @navig = navigs(:one)
  end

  test "visiting the index" do
    visit navigs_url
    assert_selector "h1", text: "Navigs"
  end

  test "creating a Navig" do
    visit navigs_url
    click_on "New Navig"

    fill_in "Home", with: @navig.home
    click_on "Create Navig"

    assert_text "Navig was successfully created"
    click_on "Back"
  end

  test "updating a Navig" do
    visit navigs_url
    click_on "Edit", match: :first

    fill_in "Home", with: @navig.home
    click_on "Update Navig"

    assert_text "Navig was successfully updated"
    click_on "Back"
  end

  test "destroying a Navig" do
    visit navigs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Navig was successfully destroyed"
  end
end
