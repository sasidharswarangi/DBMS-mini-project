require "application_system_test_case"

class PortsTest < ApplicationSystemTestCase
  setup do
    @port = ports(:one)
  end

  test "visiting the index" do
    visit ports_url
    assert_selector "h1", text: "Ports"
  end

  test "creating a Port" do
    visit ports_url
    click_on "New Port"

    fill_in "Address", with: @port.address
    fill_in "License", with: @port.license
    fill_in "Name", with: @port.name
    fill_in "Phone number", with: @port.phone_number
    click_on "Create Port"

    assert_text "Port was successfully created"
    click_on "Back"
  end

  test "updating a Port" do
    visit ports_url
    click_on "Edit", match: :first

    fill_in "Address", with: @port.address
    fill_in "License", with: @port.license
    fill_in "Name", with: @port.name
    fill_in "Phone number", with: @port.phone_number
    click_on "Update Port"

    assert_text "Port was successfully updated"
    click_on "Back"
  end

  test "destroying a Port" do
    visit ports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Port was successfully destroyed"
  end
end
