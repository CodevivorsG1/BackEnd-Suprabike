require 'test_helper'

class AssemblePartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assemble_part = assemble_parts(:one)
  end

  test "should get index" do
    get assemble_parts_url, as: :json
    assert_response :success
  end

  test "should create assemble_part" do
    assert_difference('AssemblePart.count') do
      post assemble_parts_url, params: { assemble_part: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show assemble_part" do
    get assemble_part_url(@assemble_part), as: :json
    assert_response :success
  end

  test "should update assemble_part" do
    patch assemble_part_url(@assemble_part), params: { assemble_part: {  } }, as: :json
    assert_response 200
  end

  test "should destroy assemble_part" do
    assert_difference('AssemblePart.count', -1) do
      delete assemble_part_url(@assemble_part), as: :json
    end

    assert_response 204
  end
end
