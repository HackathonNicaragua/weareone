require 'test_helper'

class MaterialesProfesionalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get materiales_profesional_index_url
    assert_response :success
  end

end
