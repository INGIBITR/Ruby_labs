require "minitest/autorun"
require "minitest/assertions"
require_relative "lab5pt2.rb"

class TC_MyTest < Minitest::Test
  ALPHABET = ("a".."z").to_a
  NUMBERS = ("1".."9").to_a
  SPACE = (" ").to_s
  @@string = String.new
  @@numbers = String.new
  rnd = Random.new
  for i in (0..rnd.rand(3..7))
    # sample - choose 10 random elements from the array
    # join - returns a string by conventing each element of the array to a string
    word = ALPHABET.sample(rnd.rand(4..9)).join
    # print("word: \n")
    #p word
    @@string = @@string.concat(word, " ")
    #string = string.concat(" ")
    # print("string: \n")
    # p @string
    number = NUMBERS.sample(rnd.rand(1..1)).join
    @@numbers = @@numbers.concat(number, " ")
    # p @numbers
  end

  def test_001
    @@output = String.new
    puts("original:\n", @@string, "\n")
    tempstr = @@string
    tempnumb = @@numbers
    arrstr = tempstr.split
    arrnumb = tempnumb.split
    arrstr.each_index do |idx|
      @@output.concat(arrstr[idx].slice(0, arrnumb[idx].to_i), " ")
    end
    puts("expected:\n", @@output, "\n")
    puts("actual:\n")
    assert_equal(@@output, Work.input(tempstr, tempnumb))
  end

  def test_002
    # ...
  end

  # ...
end
