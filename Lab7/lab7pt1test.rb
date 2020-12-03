require_relative 'lab7pt1module'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  include Lab7pt1

  def setup; end

  def test_input_failure
    assert_equal(Lab7pt1.output('badtext.txt'), 'You have a mistake in your input')
  end

  def test_input_failure_no_file
    assert_equal(Lab7pt1.output('string'), 'Error reading file')
  end
end
