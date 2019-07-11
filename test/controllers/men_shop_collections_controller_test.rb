require 'test_helper'

class MenShopCollectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_shop_collection = men_shop_collections(:one)
  end

  test "should get index" do
    get men_shop_collections_url
    assert_response :success
  end

  test "should get new" do
    get new_men_shop_collection_url
    assert_response :success
  end

  test "should create men_shop_collection" do
    assert_difference('MenShopCollection.count') do
      post men_shop_collections_url, params: { men_shop_collection: { men_shop_collection_category_id: @men_shop_collection.men_shop_collection_category_id, name: @men_shop_collection.name, price: @men_shop_collection.price } }
    end

    assert_redirected_to men_shop_collection_url(MenShopCollection.last)
  end

  test "should show men_shop_collection" do
    get men_shop_collection_url(@men_shop_collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_shop_collection_url(@men_shop_collection)
    assert_response :success
  end

  test "should update men_shop_collection" do
    patch men_shop_collection_url(@men_shop_collection), params: { men_shop_collection: { men_shop_collection_category_id: @men_shop_collection.men_shop_collection_category_id, name: @men_shop_collection.name, price: @men_shop_collection.price } }
    assert_redirected_to men_shop_collection_url(@men_shop_collection)
  end

  test "should destroy men_shop_collection" do
    assert_difference('MenShopCollection.count', -1) do
      delete men_shop_collection_url(@men_shop_collection)
    end

    assert_redirected_to men_shop_collections_url
  end
end
