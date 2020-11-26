require_relative "lab7module.rb"
include Strings
rect = Rectangle.new(5, 8)
puts rect.calc_area
puts rect.print_properties
parall = Parallelepiped.new(3,4,5)
puts parall.calc_volume
puts parall.print_properties