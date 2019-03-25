require 'test_helper'

class StudentinfoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get studentinfo_index_url
    assert_response :success
  end

end
