require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  self.use_instantiated_fixtures = true

  def setup
    @person = Person.new(pseudo: 'manu')
  end

  test "pseudo should be present" do
    @person.pseudo = '   '
    assert_not @person.valid?
  end

  test "pseudo should be unique" do
    @person.pseudo = 'tifounette'
    assert_not @person.valid?
  end

end
