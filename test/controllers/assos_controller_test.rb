require 'test_helper'

class AssosControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user_params = { email: 'contact@example.com',
                password:'password',
                password_confirmation: 'password' }
    @asso_params = { name: 'Arco-iris' }
  end

  test "should get new" do
    get new_asso_path
    assert_response :success
  end

  test "new should return empty instances" do
    get new_asso_path
    assert_not_nil :asso, :user
  end

  test "should get create" do
    post assos_path, params: { asso: @asso_params, user: @user_params }
    assert_response :found
  end

  test "should not create if missing user" do
    post assos_path, params: { asso: @asso_params }
    assert_raises :error
  end

  test "should not create if missing asso" do
skip
  end

end
