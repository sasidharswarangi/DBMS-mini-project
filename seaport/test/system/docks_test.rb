require "application_system_test_case"

class DocksTest < ApplicationSystemTestCase
  setup do
    @dock = docks(:one)
  end

  test "visiting the index" do
    visit docks_url
    assert_selector "h1", text: "Docks"
  end

  test "creating a Dock" do
    visit docks_url
    click_on "New Dock"

    fill_in "Dock number", with: @dock.dock_number
    check "Occupied" if @dock.occupied
    fill_in "Size", with: @dock.size
    click_on "Create Dock"

    assert_text "Dock was successfully created"
    click_on "Back"
  end

  test "updating a Dock" do
    visit docks_url
    click_on "Edit", match: :first

    fill_in "Dock number", with: @dock.dock_number
    check "Occupied" if @dock.occupied
    fill_in "Size", with: @dock.size
    click_on "Update Dock"

    assert_text "Dock was successfully updated"
    click_on "Back"
  end

  test "destroying a Dock" do
    visit docks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dock was successfully destroyed"
  end
end
