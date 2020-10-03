require "application_system_test_case"

class LightitemsTest < ApplicationSystemTestCase
  setup do
    @lightitem = lightitems(:one)
  end

  test "visiting the index" do
    visit lightitems_url
    assert_selector "h1", text: "Lightitems"
  end

  test "creating a Lightitem" do
    visit lightitems_url
    click_on "New Lightitem"

    fill_in "Brand", with: @lightitem.brand
    fill_in "Description", with: @lightitem.description
    fill_in "Name", with: @lightitem.name
    fill_in "Power", with: @lightitem.power
    click_on "Create Lightitem"

    assert_text "Lightitem was successfully created"
    click_on "Back"
  end

  test "updating a Lightitem" do
    visit lightitems_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @lightitem.brand
    fill_in "Description", with: @lightitem.description
    fill_in "Name", with: @lightitem.name
    fill_in "Power", with: @lightitem.power
    click_on "Update Lightitem"

    assert_text "Lightitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Lightitem" do
    visit lightitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lightitem was successfully destroyed"
  end
end
