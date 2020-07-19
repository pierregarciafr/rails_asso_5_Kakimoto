require 'test_helper'

class AssoTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true   # for l 24 to work

  def setup
    @asso = Asso.new(name: 'asso_name')
  end

  test "asso shouldn't validate without name" do
    @asso.name = ''
    assert_not @asso.valid?
  end

  test "asso should validate if name" do
    assert_not @asso.name.empty?
    assert @asso.valid?
  end


end
