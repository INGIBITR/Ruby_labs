require 'test/unit'
require_relative 'lab5pt2.rb'

class TC_MyTest < Test::Unit::TestCase
  def random_string(length)
    chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
    randstr = ''
    length.times { randstr << chars[rand(chars.size)] }
    return randstr
  end

 def test_001
    @item = random_string(6)
    @item2 = rand(5).times.map { 
        |_i| ('0'..'9').to_a.sample(rand(10)).join }.join(' ')
  result = Work.input(@item,@item2)
  #puts(@item2)
  puts(@item)
  assert_nothing_thrown{ 
    Work.input(@item,@item2)
  }
end

 def test_002
  # ...
 end
 # ...
end