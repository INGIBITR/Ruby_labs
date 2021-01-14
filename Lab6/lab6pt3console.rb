# frozen_string_literal: true

require_relative 'lab6pt3module'

lam1 = ->(x) { x + Math.cos(x) }
lam2 = ->(x) { Math.tan(x + 1) / (x + 1) }

puts('Введите n: ')
num = gets
block1 = Integral.blockintprg(-1, 4, num.to_i) { |x| x + Math.cos(x) }
block2 = Integral.blockintprg(1, 2, num.to_i) { |x| Math.tan(x + 1) / (x + 1) }
puts("Значение первого интеграла через lambdas: #{Integral.blockintprg(-1, 4, num.to_i, &lam1)}")
puts("Значение второго интеграла через lambdas: #{Integral.blockintprg(1, 2, num.to_i, &lam2)}")
puts("Значение первого интеграла через блоки: #{block1}")
puts("Значение второго интеграла через блоки: #{block2}")
