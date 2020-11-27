config = IO.read("lab7text.txt")
arrayOfData = config.split(" ")
beginn = "0"
print arrayOfData.count
for checker in 0..100 do
    
    if (arrayOfData[checker].to_f == 1)
        puts "It is a segment"
    arrayOfData.delete_at(0)
        puts "Its coords are: 
        x1:#{arrayOfData[0]}
        y1:#{arrayOfData[1]}
        x2:#{arrayOfData[2]}
        y2:#{arrayOfData[3]}
        and its length is #{Math.sqrt(((arrayOfData[2].to_f-arrayOfData[0].to_f) **2) + ((arrayOfData[3].to_f-arrayOfData[1].to_f) **2))}"
       
       for deleter in 0..4 do
           arrayOfData.delete_at(0)
       end
   
    end
end
print arrayOfData
