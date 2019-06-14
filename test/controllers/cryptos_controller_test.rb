require 'test_helper'

class CryptosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cryptos_index_url
    assert_response :success
  end

  test "should get show" do
    get cryptos_show_url
    assert_response :success
  end

end
