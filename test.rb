test_enum = Enumerator.new do |y| 
    y << 1
    y << 2
    y << 3
    end
   test_enum.take(10)