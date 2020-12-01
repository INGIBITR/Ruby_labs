module Work
  def Work.input(inpstr, inpnumb)
    output = String.new
    arrstr = inpstr.split
    arrnumb = inpnumb.split
    arrstr.each_index do |idx|
      output.concat(arrstr[idx].slice(0, arrnumb[idx].to_i), " ")
    end
    print(output)
    return output
  end
end
