require_relative 'lab5sem3.rb'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  include Calcing
  def setup; end

  def test_correct
    assert_equal(Calcing.calculate(0), 0)
  end

  def test_error
    assert_raises('NoMethodError') { Calcing.calculate('s') }
  end
end