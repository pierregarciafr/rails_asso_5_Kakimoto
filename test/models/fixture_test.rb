require 'test_helper'

class FixtureTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true   # for l 24 to work

  test "should count 2 user fixtures" do
    assert_equal 2, User.count
    assert_equal 2, users.length
  end

  test "shortcut should get the expected user fixture" do
    assert_equal users(:phil), @phil
  end

  test "fixture should be valid data" do
    assert @phil.valid?
    assert @toto.valid?
  end

  test "should raise error if fixture name doesn't exist" do
    assert_raise(StandardError) { users(:nicolas) }
  end
end
