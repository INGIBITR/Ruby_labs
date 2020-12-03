module EnumCalc
  def self.newCalc(eps)
    overallSum = 0.0
    x = 0.0
    n = 100_000
    exact = 1 / 3.to_f
    inpstring = eps
    begin
      Integer(inpstring)
    rescue StandardError
      # puts "Your input is not an integer"
      return 'Your input is not an integer'
    end
    (Enumerator.new do |y|
      precision = 1.0 / n
      (0..(n - 1)).each do |_i|
        overallSum += innerFunction(x) * precision
        x += precision
        y << overallSum
      end
    end).take_while { |y| ((y - exact).abs > eps) }

    overallSum
  end

  def self.innerFunction(x)
    innerFuncRes = 0.0
    innerFuncRes = x * Math.sqrt((1 - (x * x)).abs)
    print

    innerFuncRes
  end
end
