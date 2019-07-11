require 'test_helper'

class MenShopCollectionCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_shop_collection_category = men_shop_collection_categories(:one)
  end

  test "should get index" do
    get men_shop_collection_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_men_shop_collection_category_url
    assert_response :success
  end

  test "should create men_shop_collection_category" do
    assert_difference('MenShopCollectionCategory.count') do
      post men_shop_collection_categories_url, params: { men_shop_collection_category: { name: @men_shop_collection_category.name } }
    end

    assert_redirected_to men_shop_collection_category_url(MenShopCollectionCategory.last)
  end

  test "should show men_shop_collection_category" do
    get men_shop_collection_category_url(@men_shop_collection_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_shop_collection_category_url(@men_shop_collection_category)
    assert_response :success
  end

  test "should update men_shop_collection_category" do
    patch men_shop_collection_category_url(@men_shop_collection_category), params: { men_shop_collection_category: { name: @men_shop_collection_category.name } }
    assert_redirected_to men_shop_collection_category_url(@men_shop_collection_category)
  end

  test "should destroy men_shop_collection_category" do
    assert_difference('MenShopCollectionCategory.count', -1) do
      delete men_shop_collection_category_url(@men_shop_collection_category)
    end

    assert_redirected_to men_shop_collection_categories_url
  end
end
