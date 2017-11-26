require 'test_helper'

class VisitanteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get visitante_index_url
    assert_response :success
  end

end
