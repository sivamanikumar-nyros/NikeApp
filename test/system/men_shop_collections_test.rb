require "application_system_test_case"

class MenShopCollectionsTest < ApplicationSystemTestCase
  setup do
    @men_shop_collection = men_shop_collections(:one)
  end

  test "visiting the index" do
    visit men_shop_collections_url
    assert_selector "h1", text: "Men Shop Collections"
  end

  test "creating a Men shop collection" do
    visit men_shop_collections_url
    click_on "New Men Shop Collection"

    fill_in "Men shop collection category", with: @men_shop_collection.men_shop_collection_category_id
    fill_in "Name", with: @men_shop_collection.name
    fill_in "Price", with: @men_shop_collection.price
    click_on "Create Men shop collection"

    assert_text "Men shop collection was successfully created"
    click_on "Back"
  end

  test "updating a Men shop collection" do
    visit men_shop_collections_url
    click_on "Edit", match: :first

    fill_in "Men shop collection category", with: @men_shop_collection.men_shop_collection_category_id
    fill_in "Name", with: @men_shop_collection.name
    fill_in "Price", with: @men_shop_collection.price
    click_on "Update Men shop collection"

    assert_text "Men shop collection was successfully updated"
    click_on "Back"
  end

  test "destroying a Men shop collection" do
    visit men_shop_collections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Men shop collection was successfully destroyed"
  end
end
