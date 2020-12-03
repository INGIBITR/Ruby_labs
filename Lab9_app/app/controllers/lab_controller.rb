# frozen_string_literal: true

# kjfdghdjfg
class LabController < ApplicationController
  def index; end

  def calculate
    x_param = params[:x]
    result = ''

    if x_param == ''
      result = 'Заполните поле'
    elsif x_param.to_i.negative?
      result = 'Введите неотрицательное число'
    elsif x_param.to_i.positive?
      x = x_param.to_i
      x_i = 1
      x_i1 = 0
      values = []
      while ((x_i1**2 - x) / x).abs >= 0.001
        x_i1 = 0.5 * (x_i + (x / x_i))
        x_i = x_i1
        values.push(x_i1.ceil(2))
      end

      result = values
    else
      result = [0]
    end

    render json: { result: result }
  end
end
