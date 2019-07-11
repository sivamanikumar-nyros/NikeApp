require "application_system_test_case"

class MenClothesCategoriesTest < ApplicationSystemTestCase
  setup do
    @men_clothes_category = men_clothes_categories(:one)
  end

  test "visiting the index" do
    visit men_clothes_categories_url
    assert_selector "h1", text: "Men Clothes Categories"
  end

  test "creating a Men clothes category" do
    visit men_clothes_categories_url
    click_on "New Men Clothes Category"

    fill_in "Name", with: @men_clothes_category.name
    click_on "Create Men clothes category"

    assert_text "Men clothes category was successfully created"
    click_on "Back"
  end

  test "updating a Men clothes category" do
    visit men_clothes_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @men_clothes_category.name
    click_on "Update Men clothes category"

    assert_text "Men clothes category was successfully updated"
    click_on "Back"
  end

  test "destroying a Men clothes category" do
    visit men_clothes_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Men clothes category was successfully destroyed"
  end
end
