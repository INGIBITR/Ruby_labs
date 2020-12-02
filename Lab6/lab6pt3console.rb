require_relative "lab6pt3module.rb"
integralType = 0
puts("enter 1 or 2")
integralType = gets
integralType = integralType.to_i
puts("enter precision")
myPrecision = gets
l = lambda { |precision, numOfIntegral| puts(Integral.input(precision, integralType)) }
l.call(myPrecision, integralType)
print(integralType)

print()

def putWithBlock
  return "Unexpected error occured" unless block_given?
  yield
  puts("It works!")
end

putWithBlock { puts(Integral.input(myPrecision, integralType)) }
