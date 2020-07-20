require 'test_helper'

class UserTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true   # for l 24 to work

  def setup
    @user = User.new(email:'test@gmail.com',
                     password:'password', password_confirmation: 'password',
                     )
    @asso = Asso.new(name: 'asso_name')

  end

  test "user shouldn't validate empty email" do
    @user.email = ''
    assert_not @user.valid?
  end

  test "user shouldn't validate empty password" do
    @user.password = ''
    @user.password_confirmation = ''
    assert_not @user.valid?
  end

  test "should count 2 user fixtures" do
    assert_equal 2, User.count
    assert_equal 2, users.length
  end

  test "shortcut should get the expected user fixture"
    skip
    assert_equal users(:phil), @phil
  end

  test "fixture should be valid data" do
    skip
    assert @phil.valid?
    assert @toto.valid?
  end

  test "should raise error if fixture name doesn't exist" do
    skip
    assert_raise(StandardError) { users(:nicolas) }
  end

  # test "email should not be too long" do
  #   @user.email = 'a'*300 << '@gmail.com'
  #   assert_not @user.valid?
  # end

  test "user should validate undefined asso" do
    skip
    @user.asso = nil
    @user.valid?
  end

  test "user should validate asso" do
    skip
    @user.asso = @asso
    @user.valid?
  end

  test "saving User should create instance in database" do
    skip
    assert_difference 'User.count', 1 do
      @user.save
    end
  end

  test "creating User should create Asso" do
    skip
    @user.asso = @asso
    assert_difference 'Asso.count', 1 do
      @user.save
    end
  end

  test "destroying User should destroy Asso" do
    skip
    @user.asso = @asso
    @user.save
    assert_difference 'Asso.count', -1 do
      @user.destroy
    end
  end


end
