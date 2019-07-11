require "application_system_test_case"

class MenShoeCategoriesTest < ApplicationSystemTestCase
  setup do
    @men_shoe_category = men_shoe_categories(:one)
  end

  test "visiting the index" do
    visit men_shoe_categories_url
    assert_selector "h1", text: "Men Shoe Categories"
  end

  test "creating a Men shoe category" do
    visit men_shoe_categories_url
    click_on "New Men Shoe Category"

    fill_in "Name", with: @men_shoe_category.name
    click_on "Create Men shoe category"

    assert_text "Men shoe category was successfully created"
    click_on "Back"
  end

  test "updating a Men shoe category" do
    visit men_shoe_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @men_shoe_category.name
    click_on "Update Men shoe category"

    assert_text "Men shoe category was successfully updated"
    click_on "Back"
  end

  test "destroying a Men shoe category" do
    visit men_shoe_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Men shoe category was successfully destroyed"
  end
end
