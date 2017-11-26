require 'test_helper'

class RegProfesionalControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reg_profesional_index_url
    assert_response :success
  end

end
