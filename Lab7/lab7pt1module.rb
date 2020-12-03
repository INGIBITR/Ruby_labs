module Lab7pt1
  def self.output(filename)
    begin
      config = IO.read(filename)
    rescue StandardError
      puts 'Error reading file'
      return 'Error reading file'
    end

    textDataArray = config.split("\n")

    (0.  textDataArray.count - 1).each do |checker|
      tempstring =  textDataArray[checker]
      puts("\n")

      if tempstring[0] == '1'
        tempstring = tempstring[2..tempstring.length]
        # puts "modified string #{tempstring}"
        coords = tempstring.split
        begin
          (0..3).each do |i|
            Integer(coords[i])
          end
        rescue StandardError
          puts 'You have a mistake in your input'
          return 'You have a mistake in your input'
        end
        puts 'It is a segment'
        puts "Its coords are:
       x1:#{coords[0]}
       y1:#{coords[1]}
       x2:#{coords[2]}
       y2:#{coords[3]}
       and its length is
       #{Math.sqrt(((coords[2].to_f - coords[0].to_f)**2) +
                   ((coords[3].to_f - coords[1].to_f)**2))}
                   #{coords[4]} "
      elsif tempstring[0] == '2'
        tempstring = tempstring[2..tempstring.length]
        coords = tempstring.split
        begin
          (0..2).each do |i|
            Integer(coords[i])
          end
        rescue StandardError
          puts 'You have a mistake in your input'
          return 'You have a mistake in your input'
        end
        puts 'It is a circle'
        puts "Its coords are:
        x: #{coords[0]}
        y: #{coords[1]}
        and it has a radius of #{coords[2]}"
      end
    end
  end
end
