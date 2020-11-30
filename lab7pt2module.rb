module Strings 

    class Rectangle
        attr_accessor :name, :age
        def initialize(length, width)
            @length = length.to_f
            @width = width.to_f
       
        end 

        def calc_area
            return @length * @width
        end

        def print_properties
            return "length: #{@length}\nwidth: #{@width}"
        end

    end

    class Parallelepiped < Rectangle
        def initialize(length, width, height)
            super(length, width)
            @height = height.to_f
        end

        def calc_volume

           return calc_area * @height
        end

        def print_properties
            return "#{super}\nheight: #{@height}"
        end
    end
    
    
    
    



end

