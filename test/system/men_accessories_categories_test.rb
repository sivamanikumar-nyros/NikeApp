require "application_system_test_case"

class MenAccessoriesCategoriesTest < ApplicationSystemTestCase
  setup do
    @men_accessories_category = men_accessories_categories(:one)
  end

  test "visiting the index" do
    visit men_accessories_categories_url
    assert_selector "h1", text: "Men Accessories Categories"
  end

  test "creating a Men accessories category" do
    visit men_accessories_categories_url
    click_on "New Men Accessories Category"

    fill_in "Name", with: @men_accessories_category.name
    click_on "Create Men accessories category"

    assert_text "Men accessories category was successfully created"
    click_on "Back"
  end

  test "updating a Men accessories category" do
    visit men_accessories_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @men_accessories_category.name
    click_on "Update Men accessories category"

    assert_text "Men accessories category was successfully updated"
    click_on "Back"
  end

  test "destroying a Men accessories category" do
    visit men_accessories_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Men accessories category was successfully destroyed"
  end
end
