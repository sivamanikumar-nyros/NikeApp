require "application_system_test_case"

class MenClothesTest < ApplicationSystemTestCase
  setup do
    @men_clothe = men_clothes(:one)
  end

  test "visiting the index" do
    visit men_clothes_url
    assert_selector "h1", text: "Men Clothes"
  end

  test "creating a Men clothe" do
    visit men_clothes_url
    click_on "New Men Clothe"

    fill_in "Men clothes category", with: @men_clothe.men_clothes_category_id
    fill_in "Name", with: @men_clothe.name
    fill_in "Price", with: @men_clothe.price
    click_on "Create Men clothe"

    assert_text "Men clothe was successfully created"
    click_on "Back"
  end

  test "updating a Men clothe" do
    visit men_clothes_url
    click_on "Edit", match: :first

    fill_in "Men clothes category", with: @men_clothe.men_clothes_category_id
    fill_in "Name", with: @men_clothe.name
    fill_in "Price", with: @men_clothe.price
    click_on "Update Men clothe"

    assert_text "Men clothe was successfully updated"
    click_on "Back"
  end

  test "destroying a Men clothe" do
    visit men_clothes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Men clothe was successfully destroyed"
  end
end
