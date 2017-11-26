require 'test_helper'

class MaterialesEstudiantesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get materiales_estudiantes_index_url
    assert_response :success
  end

end
