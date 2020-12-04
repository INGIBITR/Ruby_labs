# frozen_string_literal: true

require './test/test_helper'

class Lab8ControllerTest < ActionController::TestCase
  def setup
    @controller = LabController.new
  end

  test 'should get index' do
    get :index
    assert_response :success
  end

  test 'should calculate' do
    get :calculate, params: { 'x' => '29472' }, format: :json
    assert_response :success
    assert_equal '{"result":[29472,56964,103929,1033230,1356531]}', @response.body
  end
end
