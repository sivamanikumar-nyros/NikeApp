require "application_system_test_case"

class MenShopCollectionCategoriesTest < ApplicationSystemTestCase
  setup do
    @men_shop_collection_category = men_shop_collection_categories(:one)
  end

  test "visiting the index" do
    visit men_shop_collection_categories_url
    assert_selector "h1", text: "Men Shop Collection Categories"
  end

  test "creating a Men shop collection category" do
    visit men_shop_collection_categories_url
    click_on "New Men Shop Collection Category"

    fill_in "Name", with: @men_shop_collection_category.name
    click_on "Create Men shop collection category"

    assert_text "Men shop collection category was successfully created"
    click_on "Back"
  end

  test "updating a Men shop collection category" do
    visit men_shop_collection_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @men_shop_collection_category.name
    click_on "Update Men shop collection category"

    assert_text "Men shop collection category was successfully updated"
    click_on "Back"
  end

  test "destroying a Men shop collection category" do
    visit men_shop_collection_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Men shop collection category was successfully destroyed"
  end
end
