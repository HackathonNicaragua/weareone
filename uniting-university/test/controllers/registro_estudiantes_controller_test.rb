require 'test_helper'

class RegistroEstudiantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_estudiante = registro_estudiantes(:one)
  end

  test "should get index" do
    get registro_estudiantes_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_estudiante_url
    assert_response :success
  end

  test "should create registro_estudiante" do
    assert_difference('RegistroEstudiante.count') do
      post registro_estudiantes_url, params: { registro_estudiante: { carnet: @registro_estudiante.carnet, contra: @registro_estudiante.contra, usuario: @registro_estudiante.usuario } }
    end

    assert_redirected_to registro_estudiante_url(RegistroEstudiante.last)
  end

  test "should show registro_estudiante" do
    get registro_estudiante_url(@registro_estudiante)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_estudiante_url(@registro_estudiante)
    assert_response :success
  end

  test "should update registro_estudiante" do
    patch registro_estudiante_url(@registro_estudiante), params: { registro_estudiante: { carnet: @registro_estudiante.carnet, contra: @registro_estudiante.contra, usuario: @registro_estudiante.usuario } }
    assert_redirected_to registro_estudiante_url(@registro_estudiante)
  end

  test "should destroy registro_estudiante" do
    assert_difference('RegistroEstudiante.count', -1) do
      delete registro_estudiante_url(@registro_estudiante)
    end

    assert_redirected_to registro_estudiantes_url
  end
end
