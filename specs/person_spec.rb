require 'minitest/autorun'
require 'minitest/rg'
require_relative '../person.rb'
require_relative '../bus.rb'

class PersonTest < MiniTest::Test

  def setup

    @person = Person.new("Craig", 30)

  end

  def test_get_person_name
    assert_equal("Craig", @person.name)
  end
  
  def test_get_person_age
    assert_equal(30, @person.age)
  end

end
