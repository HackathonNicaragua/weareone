require 'test_helper'

class RegProvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reg_profe = reg_proves(:one)
  end

  test "should get index" do
    get reg_proves_url
    assert_response :success
  end

  test "should get new" do
    get new_reg_profe_url
    assert_response :success
  end

  test "should create reg_profe" do
    assert_difference('RegProfe.count') do
      post reg_proves_url, params: { reg_profe: { contrasena: @reg_profe.contrasena, email: @reg_profe.email, nombre_apellido: @reg_profe.nombre_apellido, usuario: @reg_profe.usuario } }
    end

    assert_redirected_to reg_profe_url(RegProfe.last)
  end

  test "should show reg_profe" do
    get reg_profe_url(@reg_profe)
    assert_response :success
  end

  test "should get edit" do
    get edit_reg_profe_url(@reg_profe)
    assert_response :success
  end

  test "should update reg_profe" do
    patch reg_profe_url(@reg_profe), params: { reg_profe: { contrasena: @reg_profe.contrasena, email: @reg_profe.email, nombre_apellido: @reg_profe.nombre_apellido, usuario: @reg_profe.usuario } }
    assert_redirected_to reg_profe_url(@reg_profe)
  end

  test "should destroy reg_profe" do
    assert_difference('RegProfe.count', -1) do
      delete reg_profe_url(@reg_profe)
    end

    assert_redirected_to reg_proves_url
  end
end
