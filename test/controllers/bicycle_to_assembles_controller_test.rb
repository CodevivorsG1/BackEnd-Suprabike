require 'test_helper'

class BicycleToAssemblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicycle_to_assemble = bicycle_to_assembles(:one)
  end

  test "should get index" do
    get bicycle_to_assembles_url, as: :json
    assert_response :success
  end

  test "should create bicycle_to_assemble" do
    assert_difference('BicycleToAssemble.count') do
      post bicycle_to_assembles_url, params: { bicycle_to_assemble: { total_price: @bicycle_to_assemble.total_price } }, as: :json
    end

    assert_response 201
  end

  test "should show bicycle_to_assemble" do
    get bicycle_to_assemble_url(@bicycle_to_assemble), as: :json
    assert_response :success
  end

  test "should update bicycle_to_assemble" do
    patch bicycle_to_assemble_url(@bicycle_to_assemble), params: { bicycle_to_assemble: { total_price: @bicycle_to_assemble.total_price } }, as: :json
    assert_response 200
  end

  test "should destroy bicycle_to_assemble" do
    assert_difference('BicycleToAssemble.count', -1) do
      delete bicycle_to_assemble_url(@bicycle_to_assemble), as: :json
    end

    assert_response 204
  end
end
