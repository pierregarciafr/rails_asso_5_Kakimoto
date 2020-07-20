require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  def setup
  end

test "invalid signup information" do
    get new_user_registration_path
    assert_no_difference 'User.count' do
      post user_registration_path, params: { user: {
                                         email: "",
                                         password: "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'users/new'
    # assert_select 'div#error_explanation'
    # assert_select 'div.alert.alert-danger'
  end

end
