module Integral
    def Integral.input(numberOfIterations, innerIntegral)
        
       
        upper = 0.0
        lower = 0.0
        counter = 0.0
        a = false
       
        
       overallSum = 0.0
    
        precision = numberOfIterations
       
        if innerIntegral == 1 then
           
            upper = 4.0
            lower = -1.0  
        
        elsif innerIntegral == 2 then
            
        
           upper = 2.0
           lower = 1.0
           

        end
    
        puts
       puts(upper)
        iteration = (upper-lower)/precision
        counter = lower
        overallSum = (innerFunction(1,innerIntegral)-innerFunction(0, innerIntegral))/2
       for i in 1..(precision-1) do
        counter += iteration
           overallSum += innerFunction(counter, innerIntegral)
       
       end
       overallSum = overallSum*iteration
    return overallSum
    end
    
    def Integral.innerFunction(x, num)
        innerFuncRes = 0.0
        if (num == 1) 
            innerFuncRes= x + Math.cos(x)
        
        elsif (num == 2)
            innerFuncRes= (Math.tan(x+1))/(x+1) 
            
        end
    
        print()
       
        return innerFuncRes
    end
    
    end
    

    
