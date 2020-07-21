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

  test "valid format register should be accepted" do
    registers = ['W12345678', 'y98765433']
    registers.each do |valid_register|
      @asso.register = valid_register
      assert @asso.valid?
    end
  end

  test "bad format register should be recused" do
    registers = ['W1234', 'ezry98765', 'azertyuio']
    registers.each do |invalid_register|
      @asso.register = invalid_register
      assert_not @asso.valid?
    end
  end


end
