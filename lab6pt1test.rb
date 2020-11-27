require_relative 'lab6pt1module.rb'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  include Integral
  def setup; end

  def test_correct
    assert_equal(Integral.input(Integer(10000)), 0.33333303850902046, "failure")
  end

  def test_correct_2
    assert_equal(Integral.input(Integer(1000)), 0.33332395447013213, "failure")
  end

  def test_input_failure
    assert_throws(:"invalid value for Integer(): s") {Integral.input(Integer("s"))}
  end

  
end
