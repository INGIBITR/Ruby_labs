# frozen_string_literal: true

require_relative 'l611.rb'

lam1 = ->(x) { x * (x - 1) }
lam2 = ->(x) { Math.exp(x) / (x + 1) }

puts('Введите n: ')
num = gets
block1 = Lab.blockintprg(0, 2, num.to_i) { |x| x * (x - 1) }
block2 = Lab.blockintprg(0, 1, num.to_i) { |x| Math.exp(x) / (x + 1) }
puts('Значение первого интеграла через lambdas: ' + Lab.intprg(lam1, 0, 2, num.to_i).to_s)
puts('Значение второго интеграла через lambdas: ' + Lab.intprg(lam2, 0, 1, num.to_i).to_s)
puts('Значение первого интеграла через блоки: ' + block1.to_s)
puts('Значение второго интеграла через блоки: ' + block2.to_s)
