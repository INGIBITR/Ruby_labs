# frozen_string_literal: true

# kjfdghdjfg
class LabController < ApplicationController
  def index; end

  def calculate
    x_param = params[:x]
    result = ''
    iteration = 0
    values = []

    if x_param == ''
      result = 'Заполните поле'
    elsif x_param.to_i <= 0
      result = 'Введите число больше нуля'
    elsif x_param.to_i >= 0
      values.push(x_param.to_i)

      while x_param.to_s != x_param.to_s.reverse
        iteration += 1
        if x_param.to_s != x_param.to_s.reverse

          rev = x_param.to_s.reverse.to_i
          x_param = rev + x_param.to_i
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
