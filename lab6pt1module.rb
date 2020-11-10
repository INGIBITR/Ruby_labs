module Integral
def Integral.input(numberOfIterations)
    
    
    upper = 1.0
    lower = 0.0
    counter = 0.0
    
   
    
   overallSum = 0.0

    precision = numberOfIterations
    
   
    iteration = (upper-lower)/precision
    overallSum = (innerFunction(1)-innerFunction(0))/2
   for i in 1..(precision-1) do
    counter += iteration
       overallSum += innerFunction(counter)
   
   end
   overallSum = overallSum*iteration
return overallSum
end

def Integral.innerFunction(x)
    innerFuncRes = 0.0
    innerFuncRes=x*Math.sqrt((1-(x*x)).abs)
    print()
   
    return innerFuncRes
end

end



