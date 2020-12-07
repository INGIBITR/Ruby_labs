# frozen_string_literal: true

class WelcomeController < ApplicationController
  def result
    n = params[:n].to_i

    cached_result = CachedResult.find_or_initialize_by(n: n)

    if cached_result.new_record?
      cached_result.values = calc_palindrome(n)
      cached_result.save!
    end

    @result = cached_result.values

    respond_to do |format|
      format.json { render json: @result }
      format.html { render }
      format.xml { render xml: @result.to_xml }
      format.rss { render xml: @result.to_xml }
    end
  end

  def index; end

  def cached
    result = CachedResult.all.map { |inst| { n: inst.n, result: inst.values } }

    respond_to do |format|
      format.xml { render xml: result.to_xml }
      format.json { render json: result }
    end
  end

  private

  def calc_palindrome(n)
    x_param = n
    result = ""
    iteration = 0
    values = []
    iters = []
    values.push(x_param.to_i)
    iters.push(iteration)
    while x_param.to_s != x_param.to_s.reverse
      iteration += 1
      if x_param.to_s != x_param.to_s.reverse
        rev = x_param.to_s.reverse.to_i
        x_param = rev + x_param.to_i
        # print(x, "\n")

      end
      values.push(x_param)
      iters.push(iteration)
    end
    result = iters.map { |a| { x: iters[a], xsqr: values[a] } }
    # values.push(30)

    return result
  end
end
