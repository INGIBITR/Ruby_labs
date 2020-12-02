require_relative "lab6pt3module.rb"
require "minitest/autorun"

# Test Class
class TestClass < Minitest::Test
  include Integral

  def setup; end

  def test_correct_int1
    assert_in_delta(7.58467, Integral.input(1000, 1), 0.01)
  end

  def test_correct1_int1
    assert_in_delta(7.58467, Integral.input(10000, 1), 0.001)
  end

  def test_correct_int2
    assert_in_delta(-0.3768714, Integral.input(1000, 2), 0.01)
  end

  def test_correct1_int2
    assert_in_delta(-0.3768714, Integral.input(10000, 2), 0.001)
  end

  def test_input_failure
    assert_equal(Integral.input("string", 5), "Your input is not an integer")
  end

  def test_input_failure
    assert_equal(Integral.input(5000, "string"), "Your input is not an integer")
  end
end
