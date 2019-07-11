require "application_system_test_case"

class MenAccessoriesTest < ApplicationSystemTestCase
  setup do
    @men_accessory = men_accessories(:one)
  end

  test "visiting the index" do
    visit men_accessories_url
    assert_selector "h1", text: "Men Accessories"
  end

  test "creating a Men accessory" do
    visit men_accessories_url
    click_on "New Men Accessory"

    fill_in "Men accessories category", with: @men_accessory.men_accessories_category_id
    fill_in "Name", with: @men_accessory.name
    fill_in "Price", with: @men_accessory.price
    click_on "Create Men accessory"

    assert_text "Men accessory was successfully created"
    click_on "Back"
  end

  test "updating a Men accessory" do
    visit men_accessories_url
    click_on "Edit", match: :first

    fill_in "Men accessories category", with: @men_accessory.men_accessories_category_id
    fill_in "Name", with: @men_accessory.name
    fill_in "Price", with: @men_accessory.price
    click_on "Update Men accessory"

    assert_text "Men accessory was successfully updated"
    click_on "Back"
  end

  test "destroying a Men accessory" do
    visit men_accessories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Men accessory was successfully destroyed"
  end
end
