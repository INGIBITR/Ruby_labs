class XmlController < ApplicationController
  before_action :parse_params, only: :index
def index
palindromes = calc_palindrome(@num)
data = if palindromes.nil?
   
{
    message: "Неверные параметры запроса (number = #{@num})" }
else
palindromes.map { |elem| { elem: elem } }
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
def calc_palindrome(x_param) 
    if x_param <= 0
        return nil
    end
values = []
iteration = 0
values.push(x_param.to_i)

while x_param.to_s != x_param.to_s.reverse
  iteration += 1
  if x_param.to_s != x_param.to_s.reverse
    rev = x_param.to_s.reverse.to_i
    x_param = rev + x_param.to_i
    # print(x, "\n")

  end
  values.push(x_param)
end
result = values
return result
end

end