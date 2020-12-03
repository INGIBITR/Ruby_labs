class PalindromeController < ApplicationController
  def input
  end

  def view
    num = params[:num].to_i
    @result = palindrome?(num)
  end

  def palindrome?(x)
    @currentnumber = []
    @currentiteration = []
    iteration = 0
    @currentnumber[0] = x
    @currentiteration[0] = 0

    while x.to_s != x.to_s.reverse
      iteration += 1
      if x.to_s != x.to_s.reverse
        @currentiteration[iteration] = iteration
        rev = (x.to_s.reverse).to_i
        x = rev + x
        @currentnumber[iteration] = x
        print("x after iteration #{iteration}:\n")
        print(x, "\n")
        # print("current iteration: #{iteration}")

      elsif x.to_s == x.to_s.reverse
        return x
      end
    end
    return x
  end
end
