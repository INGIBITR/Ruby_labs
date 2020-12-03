
    def input
    end
  
    def view(num)
      #num = params[:num].to_i
      @result = palindrome?(num)#(1..num).select{|x| palindrome?(x)}
      #print @result
    end
  
  @currentnumber = []
  @currentiteration = []
    def palindrome?(x)
        iteration = 0
      while x.to_s != x.to_s.reverse 
        iteration +=1
        if  x.to_s != x.to_s.reverse 
            rev = (x.to_s.reverse).to_i
            x = rev + x
            print("x after iteration #{iteration}:\n")
            print(x,"\n")
           # print("current iteration: #{iteration}")
@currentnumber[iteration] = x
@currentiteration[iteration-1] = iteration
           elsif x.to_s == x.to_s.reverse 
            return x
          end
      end
      return x
    end

    view(13673)