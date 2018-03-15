require 'test_helper'

class ByciclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bycicle = bycicles(:one)
  end

  test "should get index" do
    get bycicles_url
    assert_response :success
  end

  test "should get new" do
    get new_bycicle_url
    assert_response :success
  end

  test "should create bycicle" do
    assert_difference('Bycicle.count') do
      post bycicles_url, params: { bycicle: { brand: @bycicle.brand, components: @bycicle.components, description: @bycicle.description, material: @bycicle.material, price: @bycicle.price, use_type: @bycicle.use_type } }
    end

    assert_redirected_to bycicle_url(Bycicle.last)
  end

  test "should show bycicle" do
    get bycicle_url(@bycicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_bycicle_url(@bycicle)
    assert_response :success
  end

  test "should update bycicle" do
    patch bycicle_url(@bycicle), params: { bycicle: { brand: @bycicle.brand, components: @bycicle.components, description: @bycicle.description, material: @bycicle.material, price: @bycicle.price, use_type: @bycicle.use_type } }
    assert_redirected_to bycicle_url(@bycicle)
  end

  test "should destroy bycicle" do
    assert_difference('Bycicle.count', -1) do
      delete bycicle_url(@bycicle)
    end

    assert_redirected_to bycicles_url
  end
end
