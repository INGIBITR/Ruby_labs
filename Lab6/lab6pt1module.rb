# frozen_string_literal: true

module Integral
  def self.input(numberOfIterations)
    inpstring = ''
    upper = 1.0
    lower = 0.0
    counter = 0.0
    overallSum = 0.0
    inpstring = numberOfIterations
    begin
      Integer(inpstring)
    rescue StandardError
      # puts "Your input is not an integer"
      return 'Your input is not an integer'
    end
    precision = numberOfIterations.to_i

    iteration = (upper - lower) / precision
    overallSum = (innerFunction(1) - innerFunction(0)) / 2
    (1..(precision - 1)).each do |_i|
      counter += iteration
      overallSum += innerFunction(counter)
    end
    overallSum *= iteration
    overallSum
  end

  def self.innerFunction(x)
    innerFuncRes = 0.0
    innerFuncRes = x * Math.sqrt((1 - (x * x)).abs)
    print

    innerFuncRes
  end
end
