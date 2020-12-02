require_relative "lab7pt2module.rb"
include Strings
rect = Rectangle.new(5, 8)
puts("enter length: \n")
ll = gets.chomp
puts("enter width: \n")
ww = gets.chomp
rect = Rectangle.new(ll.to_f, ww.to_f)
puts ("Area = #{rect.calc_area}")
puts rect.print_properties
puts("enter length: \n")
ll = gets.chomp
puts("enter width: \n")
ww = gets.chomp
puts("enter height: \n")
hh = gets.chomp
parall = Parallelepiped.new(ll.to_f, ww.to_f, hh.to_f)
puts ("Volume = #{parall.calc_volume}")
puts parall.print_properties
