require 'test_helper'

class SolaritemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solaritem = solaritems(:one)
  end

  test "should get index" do
    get solaritems_url
    assert_response :success
  end

  test "should get new" do
    get new_solaritem_url
    assert_response :success
  end

  test "should create solaritem" do
    assert_difference('Solaritem.count') do
      post solaritems_url, params: { solaritem: { brand: @solaritem.brand, description: @solaritem.description, name: @solaritem.name, peak_power: @solaritem.peak_power } }
    end

    assert_redirected_to solaritem_url(Solaritem.last)
  end

  test "should show solaritem" do
    get solaritem_url(@solaritem)
    assert_response :success
  end

  test "should get edit" do
    get edit_solaritem_url(@solaritem)
    assert_response :success
  end

  test "should update solaritem" do
    patch solaritem_url(@solaritem), params: { solaritem: { brand: @solaritem.brand, description: @solaritem.description, name: @solaritem.name, peak_power: @solaritem.peak_power } }
    assert_redirected_to solaritem_url(@solaritem)
  end

  test "should destroy solaritem" do
    assert_difference('Solaritem.count', -1) do
      delete solaritem_url(@solaritem)
    end

    assert_redirected_to solaritems_url
  end
end
