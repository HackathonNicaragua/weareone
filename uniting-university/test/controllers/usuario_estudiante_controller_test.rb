require 'test_helper'

class UsuarioEstudianteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuario_estudiante_index_url
    assert_response :success
  end

end
