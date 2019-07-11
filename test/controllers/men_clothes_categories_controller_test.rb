require 'test_helper'

class MenClothesCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_clothes_category = men_clothes_categories(:one)
  end

  test "should get index" do
    get men_clothes_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_men_clothes_category_url
    assert_response :success
  end

  test "should create men_clothes_category" do
    assert_difference('MenClothesCategory.count') do
      post men_clothes_categories_url, params: { men_clothes_category: { name: @men_clothes_category.name } }
    end

    assert_redirected_to men_clothes_category_url(MenClothesCategory.last)
  end

  test "should show men_clothes_category" do
    get men_clothes_category_url(@men_clothes_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_clothes_category_url(@men_clothes_category)
    assert_response :success
  end

  test "should update men_clothes_category" do
    patch men_clothes_category_url(@men_clothes_category), params: { men_clothes_category: { name: @men_clothes_category.name } }
    assert_redirected_to men_clothes_category_url(@men_clothes_category)
  end

  test "should destroy men_clothes_category" do
    assert_difference('MenClothesCategory.count', -1) do
      delete men_clothes_category_url(@men_clothes_category)
    end

    assert_redirected_to men_clothes_categories_url
  end
end
