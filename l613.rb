# frozen_string_literal: true

require_relative 'l611.rb'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  include Lab
  def setup; end

  def test_correct_lambda
    assert_equal(Lab.intprg(->(x) { x * (x - 1) }, 0, 2, 3), 2.8148148148148135)
  end

  def test_error
    assert_raises('NoMethodError') { Lab.intprg(->(x) { x * (x - 1) }, 0, 2, 's') }
  end

  def test_correct_block
    assert_equal(Lab.blockintprg(0, 2, 3) { |x| x * (x - 1) }, 2.8148148148148135)
  end
end
