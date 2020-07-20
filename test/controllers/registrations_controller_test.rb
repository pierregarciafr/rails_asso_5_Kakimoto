require 'test_helper'
class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  self.use_instantiated_fixtures = true

  def setup
    @user = User.new(email:'test@gmail.com',
                     password:'password', password_confirmation: 'password',
                     )
    @asso = Asso.new(name: 'asso_name')
  end

  test "should get new" do
    get new_user_registration_path
    assert_response :success
  end

  test "should get create" do
    post user_registration_path, params: { user: { email:'test_for_create@gmail.com',
                     password:'password', password_confirmation: 'password', asso_attributes: { name: 'asso_name' } }}
    assert_response :found
  end

  test "should create new user in the DB " do
      assert_difference ['User.count'], 1 do # add and make it work ! , 'Asso.count'
        @user.save
      end
    # assert_not flash.empty?
    # assert_redirected_to root_path
  end

  test "should abort create if user not valid" do
    post user_registration_path,
         params: { user: { email:'',
                     password:'password', password_confirmation: 'password' }}
    # assert_no_difference 'User.count' do # add and make it work ! , 'Asso.count'
    #     @user.save
    #   end
    # assert_not flash.empty?
    # assert_redirected_to root_path

  end

end


