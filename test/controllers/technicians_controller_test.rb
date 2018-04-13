require 'test_helper'

class TechniciansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @technician = technicians(:one)
  end

  test "should get index" do
    get technicians_url, as: :json
    assert_response :success
  end

  test "should create technician" do
    assert_difference('Technician.count') do
      post technicians_url, params: { technician: { cedula: @technician.cedula, costhour: @technician.costhour, email: @technician.email, name: @technician.name, phone: @technician.phone, surname: @technician.surname, typework: @technician.typework } }, as: :json
    end

    assert_response 201
  end

  test "should show technician" do
    get technician_url(@technician), as: :json
    assert_response :success
  end

  test "should update technician" do
    patch technician_url(@technician), params: { technician: { cedula: @technician.cedula, costhour: @technician.costhour, email: @technician.email, name: @technician.name, phone: @technician.phone, surname: @technician.surname, typework: @technician.typework } }, as: :json
    assert_response 200
  end

  test "should destroy technician" do
    assert_difference('Technician.count', -1) do
      delete technician_url(@technician), as: :json
    end

    assert_response 204
  end
end
