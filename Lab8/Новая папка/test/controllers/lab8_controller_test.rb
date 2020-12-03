# frozen_string_literal: true

require './test/test_helper'

class Lab8ControllerTest < ActionController::TestCase
  def setup
  @controller = PalindromeController.new
  end
  test 'should get input' do
    get :input
    assert_response :success
  end


  test 'should get view' do
    get :view
    assert_response :success
  end

  test 'should calculate' do
    get :view, params: {'num' => '5698'}
    assert_response :success
   
    assert_select '#1', '91619'
  end
  
 
end
