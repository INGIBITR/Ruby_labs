module Strings
  class Rectangle
    attr_accessor :name, :age

    def initialize(length, width)
      @length = length
      @width = width
    end

    def calc_area
      @length * @width
    end

    def print_properties
      "length: #{@length}\nwidth: #{@width}"
    end
  end

  class Parallelepiped < Rectangle
    def initialize(length, width, height)
      super(length, width)
      @height = height
    end

    def calc_volume
      calc_area * @height
    end

    def print_properties
      "#{super}\nheight: #{@height}"
    end
  end
end
