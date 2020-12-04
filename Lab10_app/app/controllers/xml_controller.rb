class XmlController < ApplicationController
  before_action :parse_params, only: :index
def index
palindromes = find_palindromes(@num)
#palindromes[0] = 225
data = if palindromes.nil?
   
{
    message: "Неверные параметры запроса (number = #{@num})" }
else
palindromes.map { |elem| { elem: elem, square: elem**2 } }
 end
    respond_to do |format|
    format.html { render inline: data.to_s } 
    format.xml { render xml: data.to_xml }
    format.rss { render xml: data.to_xml } 
end
end
protected
def parse_params
@num = params[:num].to_i
end
private
def find_palindromes(num) 
    if num.positive?
        (0..num).to_a.select { |elem| palindrome? elem } 
    else
    nil
    end 
end

def palindrome?(x)
    par = (x.to_i)**2
    par.to_s == par.to_s.reverse
end

end