require 'test_helper'

class QuoteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quote_index_url
    assert_response :success
  end

  test "should get show" do
    get quote_show_url
    assert_response :success
  end

end
