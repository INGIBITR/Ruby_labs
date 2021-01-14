# frozen_string_literal: true

require_relative "lab6pt3module"
require "minitest/autorun"
# Test Class
class TestClass < Minitest::Test
  def setup; end

  def test_correct_int1
    lam1 = ->(x) { x + Math.cos(x) }
    assert_in_delta(7.58467, Integral.blockintprg(-1, 4, 10000, &lam1), 0.01)
  end

  def test_correct1_int1
    lam1 = ->(x) { x + Math.cos(x) }
    assert_in_delta(7.58467, Integral.blockintprg(-1, 4, 100000, &lam1), 0.001)
  end

  def test_correct_int2
    lam2 = ->(x) { Math.tan(x + 1) / (x + 1) }
    assert_in_delta(-0.3768714, Integral.blockintprg(1, 2, 10000, &lam2), 0.01)
  end

  def test_correct1_int2
    lam2 = ->(x) { Math.tan(x + 1) / (x + 1) }
    assert_in_delta(-0.3768714, Integral.blockintprg(1, 2, 100000, &lam2), 0.001)
  end
end
