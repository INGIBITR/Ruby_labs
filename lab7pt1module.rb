module Lab7pt1
  def self.output
    config = IO.read("lab7text.txt")
    arrayOfData = config.split("\n")

    for checker in 0..arrayOfData.count - 1
      tempstring = arrayOfData[checker]
      puts("\n")

      if (tempstring[0] == "1")
        puts "It is a segment"
        tempstring = tempstring[2..tempstring.length]
        #puts "modified string #{tempstring}"
        coords = tempstring.split

        puts "Its coords are: 
       x1:#{coords[0]}
       y1:#{coords[1]}
       x2:#{coords[2]}
       y2:#{coords[3]}
       and its length is 
       #{Math.sqrt(((coords[2].to_f - coords[0].to_f) ** 2) +
                   ((coords[3].to_f - coords[1].to_f) ** 2))}"
      elsif (tempstring[0] == "2")
        puts "It is a circle"
        tempstring = tempstring[2..tempstring.length]
        coords = tempstring.split
        puts "Its coords are:
        x: #{coords[0]}
        y: #{coords[1]}
        and it has a radius of #{coords[2]}"
      end
    end
  end
end
