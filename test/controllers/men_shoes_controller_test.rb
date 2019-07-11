require 'test_helper'

class MenShoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_shoe = men_shoes(:one)
  end

  test "should get index" do
    get men_shoes_url
    assert_response :success
  end

  test "should get new" do
    get new_men_shoe_url
    assert_response :success
  end

  test "should create men_shoe" do
    assert_difference('MenShoe.count') do
      post men_shoes_url, params: { men_shoe: { men_shoe_category_id: @men_shoe.men_shoe_category_id, name: @men_shoe.name, price: @men_shoe.price } }
    end

    assert_redirected_to men_shoe_url(MenShoe.last)
  end

  test "should show men_shoe" do
    get men_shoe_url(@men_shoe)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_shoe_url(@men_shoe)
    assert_response :success
  end

  test "should update men_shoe" do
    patch men_shoe_url(@men_shoe), params: { men_shoe: { men_shoe_category_id: @men_shoe.men_shoe_category_id, name: @men_shoe.name, price: @men_shoe.price } }
    assert_redirected_to men_shoe_url(@men_shoe)
  end

  test "should destroy men_shoe" do
    assert_difference('MenShoe.count', -1) do
      delete men_shoe_url(@men_shoe)
    end

    assert_redirected_to men_shoes_url
  end
end
