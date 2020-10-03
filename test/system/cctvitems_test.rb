require "application_system_test_case"

class CctvitemsTest < ApplicationSystemTestCase
  setup do
    @cctvitem = cctvitems(:one)
  end

  test "visiting the index" do
    visit cctvitems_url
    assert_selector "h1", text: "Cctvitems"
  end

  test "creating a Cctvitem" do
    visit cctvitems_url
    click_on "New Cctvitem"

    fill_in "Brand", with: @cctvitem.brand
    fill_in "Description", with: @cctvitem.description
    fill_in "Name", with: @cctvitem.name
    click_on "Create Cctvitem"

    assert_text "Cctvitem was successfully created"
    click_on "Back"
  end

  test "updating a Cctvitem" do
    visit cctvitems_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @cctvitem.brand
    fill_in "Description", with: @cctvitem.description
    fill_in "Name", with: @cctvitem.name
    click_on "Update Cctvitem"

    assert_text "Cctvitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Cctvitem" do
    visit cctvitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cctvitem was successfully destroyed"
  end
end
