require "application_system_test_case"

class SolaritemsTest < ApplicationSystemTestCase
  setup do
    @solaritem = solaritems(:one)
  end

  test "visiting the index" do
    visit solaritems_url
    assert_selector "h1", text: "Solaritems"
  end

  test "creating a Solaritem" do
    visit solaritems_url
    click_on "New Solaritem"

    fill_in "Brand", with: @solaritem.brand
    fill_in "Description", with: @solaritem.description
    fill_in "Name", with: @solaritem.name
    fill_in "Peak power", with: @solaritem.peak_power
    click_on "Create Solaritem"

    assert_text "Solaritem was successfully created"
    click_on "Back"
  end

  test "updating a Solaritem" do
    visit solaritems_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @solaritem.brand
    fill_in "Description", with: @solaritem.description
    fill_in "Name", with: @solaritem.name
    fill_in "Peak power", with: @solaritem.peak_power
    click_on "Update Solaritem"

    assert_text "Solaritem was successfully updated"
    click_on "Back"
  end

  test "destroying a Solaritem" do
    visit solaritems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solaritem was successfully destroyed"
  end
end
