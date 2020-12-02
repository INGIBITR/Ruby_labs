require_relative "lab6pt2module.rb"
require "minitest/autorun"

# Test Class
class TestClass < Minitest::Test
  include EnumCalc

  def setup; end

  def test_correct

    # assert_equal(Integral.input(10000), 0.33333303850902046, "failure")
    assert_in_delta(0.333333333333333333, EnumCalc.newCalc(0.01), 0.01)
  end

  def test_correct_2
    # assert_equal(Integral.input(1000), 0.33332395447013213, "failure")
    assert_in_delta(0.333333333333333333, EnumCalc.newCalc(0.001), 0.001)
  end

  def test_input_failure
    assert_equal(EnumCalc.newCalc("string"), "Your input is not an integer")
  end
end
