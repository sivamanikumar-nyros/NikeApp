require "application_system_test_case"

class MenShoesTest < ApplicationSystemTestCase
  setup do
    @men_shoe = men_shoes(:one)
  end

  test "visiting the index" do
    visit men_shoes_url
    assert_selector "h1", text: "Men Shoes"
  end

  test "creating a Men shoe" do
    visit men_shoes_url
    click_on "New Men Shoe"

    fill_in "Men shoe category", with: @men_shoe.men_shoe_category_id
    fill_in "Name", with: @men_shoe.name
    fill_in "Price", with: @men_shoe.price
    click_on "Create Men shoe"

    assert_text "Men shoe was successfully created"
    click_on "Back"
  end

  test "updating a Men shoe" do
    visit men_shoes_url
    click_on "Edit", match: :first

    fill_in "Men shoe category", with: @men_shoe.men_shoe_category_id
    fill_in "Name", with: @men_shoe.name
    fill_in "Price", with: @men_shoe.price
    click_on "Update Men shoe"

    assert_text "Men shoe was successfully updated"
    click_on "Back"
  end

  test "destroying a Men shoe" do
    visit men_shoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Men shoe was successfully destroyed"
  end
end
