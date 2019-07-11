require 'test_helper'

class MenClothesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @men_clothe = men_clothes(:one)
  end

  test "should get index" do
    get men_clothes_url
    assert_response :success
  end

  test "should get new" do
    get new_men_clothe_url
    assert_response :success
  end

  test "should create men_clothe" do
    assert_difference('MenClothe.count') do
      post men_clothes_url, params: { men_clothe: { men_clothes_category_id: @men_clothe.men_clothes_category_id, name: @men_clothe.name, price: @men_clothe.price } }
    end

    assert_redirected_to men_clothe_url(MenClothe.last)
  end

  test "should show men_clothe" do
    get men_clothe_url(@men_clothe)
    assert_response :success
  end

  test "should get edit" do
    get edit_men_clothe_url(@men_clothe)
    assert_response :success
  end

  test "should update men_clothe" do
    patch men_clothe_url(@men_clothe), params: { men_clothe: { men_clothes_category_id: @men_clothe.men_clothes_category_id, name: @men_clothe.name, price: @men_clothe.price } }
    assert_redirected_to men_clothe_url(@men_clothe)
  end

  test "should destroy men_clothe" do
    assert_difference('MenClothe.count', -1) do
      delete men_clothe_url(@men_clothe)
    end

    assert_redirected_to men_clothes_url
  end
end
