require 'test_helper'

class FacultyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get faculty_index_url
    assert_response :success
  end

end
