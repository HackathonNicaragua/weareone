require 'test_helper'

class LogiandoseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logiandose_index_url
    assert_response :success
  end

end
