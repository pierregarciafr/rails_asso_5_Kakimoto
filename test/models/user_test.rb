require 'test_helper'

class UserTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true   # for l 24 to work

  def setup
    @user = User.new(email:'test@gmail.com',
                     password:'password',
                     password_confirmation: 'password'
                     )
    @params = { email:'contact@lesdoudoux.com',
                password:'password',
                password_confirmation: 'password' }
    @asso = Asso.new(name: 'les bisounours', register: 'W123456789')
    @person = Person.new(pseudo: 'tifounette')

  end

  test "user shouldn't validate empty email" do
    @user.email = ''
    assert_not @user.valid?
  end

  test "email should be unique" do
    @user.email =
  end

  test "user shouldn't validate empty password" do
    @user.password = ''
    @user.password_confirmation = ''
    assert_not @user.valid?
  end


  test "email should not be too long" do
    @user.email = 'a' * 50 << '@gmail.com'
    assert_not @user.valid?
  end

  test "user should validate undefined loginable" do # SHOULDN'T actually
    @user.loginable = nil
    @user.valid?
  end

  test "user should be created from asso " do
    assert_difference 'User.count', 1 do
      @ringos.create_user(@params)
    end
  end

  test "saving User should create instance in database" do
    assert_difference 'User.count', 1 do
      @user.save
    end
  end

  test "user should be created from Person" do
    assert_difference 'User.count', 1 do
      @tifounette.create_user(@params)
    end
  end


  test "can't create User without creating Asso" do
    assert_raise(StandardError) {
      @asso.create_user(@params)
    }
  end

  test "can't create User without creating Person" do
    assert_raise(StandardError) do
      @person.create_user(@params)
    end
  end

  test "destroying User should destroy Asso" do
    @asso.save
    @asso.create_user(@params)
    assert_difference 'Asso.count', -1 do
      User.last.destroy
    end
  end

  test "destroying User should destroy Person" do
    @person.save
    @person.create_user(@params)
    assert_difference 'Person.count', -1 do
      User.last.destroy
    end
  end
end
