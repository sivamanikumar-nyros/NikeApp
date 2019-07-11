require 'test_helper'

class MenAccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_accessory = men_accessories(:one)
  end

  test "should get index" do
    get men_accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_men_accessory_url
    assert_response :success
  end

  test "should create men_accessory" do
    assert_difference('MenAccessory.count') do
      post men_accessories_url, params: { men_accessory: { men_accessories_category_id: @men_accessory.men_accessories_category_id, name: @men_accessory.name, price: @men_accessory.price } }
    end

    assert_redirected_to men_accessory_url(MenAccessory.last)
  end

  test "should show men_accessory" do
    get men_accessory_url(@men_accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_accessory_url(@men_accessory)
    assert_response :success
  end

  test "should update men_accessory" do
    patch men_accessory_url(@men_accessory), params: { men_accessory: { men_accessories_category_id: @men_accessory.men_accessories_category_id, name: @men_accessory.name, price: @men_accessory.price } }
    assert_redirected_to men_accessory_url(@men_accessory)
  end

  test "should destroy men_accessory" do
    assert_difference('MenAccessory.count', -1) do
      delete men_accessory_url(@men_accessory)
    end

    assert_redirected_to men_accessories_url
  end
end
