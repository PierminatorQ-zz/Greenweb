require 'test_helper'

class CctvitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cctvitem = cctvitems(:one)
  end

  test "should get index" do
    get cctvitems_url
    assert_response :success
  end

  test "should get new" do
    get new_cctvitem_url
    assert_response :success
  end

  test "should create cctvitem" do
    assert_difference('Cctvitem.count') do
      post cctvitems_url, params: { cctvitem: { brand: @cctvitem.brand, description: @cctvitem.description, name: @cctvitem.name } }
    end

    assert_redirected_to cctvitem_url(Cctvitem.last)
  end

  test "should show cctvitem" do
    get cctvitem_url(@cctvitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_cctvitem_url(@cctvitem)
    assert_response :success
  end

  test "should update cctvitem" do
    patch cctvitem_url(@cctvitem), params: { cctvitem: { brand: @cctvitem.brand, description: @cctvitem.description, name: @cctvitem.name } }
    assert_redirected_to cctvitem_url(@cctvitem)
  end

  test "should destroy cctvitem" do
    assert_difference('Cctvitem.count', -1) do
      delete cctvitem_url(@cctvitem)
    end

    assert_redirected_to cctvitems_url
  end
end
