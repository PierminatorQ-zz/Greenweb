require 'test_helper'

class LightitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lightitem = lightitems(:one)
  end

  test "should get index" do
    get lightitems_url
    assert_response :success
  end

  test "should get new" do
    get new_lightitem_url
    assert_response :success
  end

  test "should create lightitem" do
    assert_difference('Lightitem.count') do
      post lightitems_url, params: { lightitem: { brand: @lightitem.brand, description: @lightitem.description, name: @lightitem.name, power: @lightitem.power } }
    end

    assert_redirected_to lightitem_url(Lightitem.last)
  end

  test "should show lightitem" do
    get lightitem_url(@lightitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_lightitem_url(@lightitem)
    assert_response :success
  end

  test "should update lightitem" do
    patch lightitem_url(@lightitem), params: { lightitem: { brand: @lightitem.brand, description: @lightitem.description, name: @lightitem.name, power: @lightitem.power } }
    assert_redirected_to lightitem_url(@lightitem)
  end

  test "should destroy lightitem" do
    assert_difference('Lightitem.count', -1) do
      delete lightitem_url(@lightitem)
    end

    assert_redirected_to lightitems_url
  end
end
