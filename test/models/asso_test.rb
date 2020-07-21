require 'test_helper'

class AssoTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true   # for l 24 to work

  def setup
    @asso = Asso.new(name: 'asso_name')
  end

  test "name should be present" do
    @asso.name = '   '
    assert_not @asso.valid?
  end

  test "register should be present" do
    @asso.register = '    '
    assert_not @asso.valid?
  end

  test "register should be unique" do
    @asso.register = @ringos.register
    assert_not @asso.valid?
  end

  test "valid format register should be accepted" do
    registers = ['W123456780', 'y987645433']
    registers.each do |valid_register|
      @asso.register = valid_register
      assert @asso.valid?, "#{valid_register} not accepted"
    end
  end

  test "bad format register should be recused" do
    registers = ['W1234', 'ezrys98765', 'azertyuio']
    registers.each do |invalid_register|
      @asso.register = invalid_register
      assert_not @asso.valid?, "#{invalid_register} not accepted"
    end
  end
end
