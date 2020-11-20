def divisible_by?(num)
    ->input{ (input % num).zero? }
  end
  
  def fizzbuzz_from(value)
    Enumerator::Lazy.new(value..Float::INFINITY) do |yielder, val|
      yielder << case val
      when divisible_by?(15)
        "FizzBuzz"
      when divisible_by?(3)
        "Fizz"
      when divisible_by?(5)
        "Buzz"
      else
        val
      end
    end end
  
  x = fizzbuzz_from(7)
  # => #<Enumerator::Lazy: 7..Infinity:each>
  
  9.times { puts x.next }
  # 7