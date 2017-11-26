require 'test_helper'

class RegEstudianteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reg_estudiante_index_url
    assert_response :success
  end

end
