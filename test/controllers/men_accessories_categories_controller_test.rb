require 'test_helper'

class MenAccessoriesCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_accessories_category = men_accessories_categories(:one)
  end

  test "should get index" do
    get men_accessories_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_men_accessories_category_url
    assert_response :success
  end

  test "should create men_accessories_category" do
    assert_difference('MenAccessoriesCategory.count') do
      post men_accessories_categories_url, params: { men_accessories_category: { name: @men_accessories_category.name } }
    end

    assert_redirected_to men_accessories_category_url(MenAccessoriesCategory.last)
  end

  test "should show men_accessories_category" do
    get men_accessories_category_url(@men_accessories_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_accessories_category_url(@men_accessories_category)
    assert_response :success
  end

  test "should update men_accessories_category" do
    patch men_accessories_category_url(@men_accessories_category), params: { men_accessories_category: { name: @men_accessories_category.name } }
    assert_redirected_to men_accessories_category_url(@men_accessories_category)
  end

  test "should destroy men_accessories_category" do
    assert_difference('MenAccessoriesCategory.count', -1) do
      delete men_accessories_category_url(@men_accessories_category)
    end

    assert_redirected_to men_accessories_categories_url
  end
end
