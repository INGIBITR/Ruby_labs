require_relative 'lab7pt2module'
require 'minitest/autorun'

# Test Class
class TestClass < Minitest::Test
  include Strings

  def setup
    @test_h = rand(1..10)
    @test_w = rand(1..10)
    @test_d = rand(1..10)
    @rect = Rectangle.new(@test_h, @test_w)
    @parall = Parallelepiped.new(@test_h, @test_w, @test_d)
  end

  def test_sq_rectangle
    assert_equal(@rect.calc_area, (@test_h * @test_w))
  end

  def test_sq_parallelepiped
    assert_equal(@parall.calc_volume, (@test_h * @test_w * @test_d))
  end

  def test_hierarchy
    assert_kind_of Rectangle, @parall
  end
end
