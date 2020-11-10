module Work
def Work.input(inpstr, inpnumb)
    arrstr = inpstr.split
    arrnumb = inpnumb.split
    arrstr.each_index do |idx|
        output=arrstr[idx].slice(0,arrnumb[idx].to_i)
        puts(output)
        
    end
end
end