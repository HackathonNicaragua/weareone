require 'test_helper'

class UsuarioProfesionalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get usuario_profesional_index_url
    assert_response :success
  end

end
