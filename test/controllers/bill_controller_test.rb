require 'test_helper'

class BillControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bill_new_url
    assert_response :success
  end

  test "should get create" do
    get bill_create_url
    assert_response :success
  end

end
