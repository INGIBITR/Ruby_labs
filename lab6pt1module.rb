module Integral
def Integral.input(numberOfIterations)
    
    if (numberOfIterations == 1)
        precision = 1000  
    elsif (numberOfIterations == 2)
        precision = 10000
    end
    
    upper = 1
    lower = 0
    counter = 0
    iteration = upper-lower/precision
    i =1

    for i in 1..precision do
        counter += iteration
        iterLower = innerFunction(counter)
        iterHigher = innerFunction(counter + iteration)
        tempResult = ((counter - (counter + iteration))/2) * (iterLower + iterHigher)
        overallResult += tempResult
    end
    return overallResult
end

def Integral.innerFunction(x)
    innerFuncRes=x*Math.sqrt(1-(x*x))
    return innerFuncRes
end
end




