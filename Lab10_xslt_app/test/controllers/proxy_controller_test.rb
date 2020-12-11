require 'test_helper'
class ProxyControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get proxy_input_url
    assert_response :success
  end

  test "should get output" do
    get proxy_output_url
    assert_response :success
  end

  test "check html format" do
    get '/proxy/output', params: { num: 5 , side: 'server' }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'text/html'
  end

  test "check xslt format" do
    get '/proxy/output', params: { num: 5 , side: 'client-with-xslt' }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/xml'
  end

  test "check xml format" do
    get '/proxy/output', params: { num: 5 , side: 'client' }
    assert_response :success
    assert_includes @response.headers['Content-Type'], 'application/xml'
  end
end