require 'test_helper'

class MenShoeCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_shoe_category = men_shoe_categories(:one)
  end

  test "should get index" do
    get men_shoe_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_men_shoe_category_url
    assert_response :success
  end

  test "should create men_shoe_category" do
    assert_difference('MenShoeCategory.count') do
      post men_shoe_categories_url, params: { men_shoe_category: { name: @men_shoe_category.name } }
    end

    assert_redirected_to men_shoe_category_url(MenShoeCategory.last)
  end

  test "should show men_shoe_category" do
    get men_shoe_category_url(@men_shoe_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_shoe_category_url(@men_shoe_category)
    assert_response :success
  end

  test "should update men_shoe_category" do
    patch men_shoe_category_url(@men_shoe_category), params: { men_shoe_category: { name: @men_shoe_category.name } }
    assert_redirected_to men_shoe_category_url(@men_shoe_category)
  end

  test "should destroy men_shoe_category" do
    assert_difference('MenShoeCategory.count', -1) do
      delete men_shoe_category_url(@men_shoe_category)
    end

    assert_redirected_to men_shoe_categories_url
  end
end
