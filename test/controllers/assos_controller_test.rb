require 'test_helper'

class AssosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get assos_new_url
    assert_response :success
  end

  test "should get create" do
    get assos_create_url
    assert_response :success
  end

end
