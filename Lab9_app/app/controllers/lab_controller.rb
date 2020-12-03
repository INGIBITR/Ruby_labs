# frozen_string_literal: true

# kjfdghdjfg
class LabController < ApplicationController
  def index; end

  def calculate
    x_param = params[:x]
    result = ''
    @currentnumber = []
    @currentiteration = []
    iteration = 0
    @currentnumber[0] = x_param
    @currentiteration[0] = 0
    values = []
    
    if x_param == ''
      result = 'Заполните поле'
    elsif x_param.to_i <= 0
      result = 'Введите число больше нуля'
    elsif x_param.to_i >= 0
      values.push(x_param)
      

      while x_param.to_s != x_param.to_s.reverse
        iteration += 1
        if x_param.to_s != x_param.to_s.reverse
          @currentiteration[iteration] = iteration
          rev = x_param.to_s.reverse.to_i
          x_param = rev + x_param.to_i
          @currentnumber[iteration] = x_param
          print("x after iteration #{iteration}:\n")
          # print(x, "\n")

        end
        values.push(x_param)
      end
      result = values
    end
    # values.push(30)
    

    render json: { result: result }
  end
end
