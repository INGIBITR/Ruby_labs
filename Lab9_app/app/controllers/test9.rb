# frozen_string_literal: true

def calculate
  x_param = '332'
  result = ''
  @currentnumber = []
  @currentiteration = []
  iteration = 0
  @currentnumber[0] = x_param
  @currentiteration[0] = 0
  print('2')
  if x_param == ''
    result = 'Заполните поле'
  elsif x_param.to_i.negative?
    result = 'Введите число больше нуля'
  elsif x_param.to_i.positive?
    x = x_param.to_i
    x_i = 1
    x_i1 = 0
    values = []
    while x_param.to_s != x_param.to_s.reverse
      iteration += 1
      if x_param.to_s != x_param.to_s.reverse
        @currentiteration[iteration] = iteration
        rev = x_param.to_s.reverse.to_i
        x_param = rev + x_param.to_i
        @currentnumber[iteration] = x_param
        print("x after iteration #{iteration}:\n
            #{x_param}")
        # print(x, "\n")

      end
      values.push(x_param)
    end
  end
  values.push(30)
  result = values

  # render json: { result: result }
end

calculate
