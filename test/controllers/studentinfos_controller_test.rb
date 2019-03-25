require 'test_helper'

class StudentinfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studentinfo = studentinfos(:one)
  end

  test "should get index" do
    get studentinfos_url
    assert_response :success
  end

  test "should get new" do
    get new_studentinfo_url
    assert_response :success
  end

  test "should create studentinfo" do
    assert_difference('Studentinfo.count') do
      post studentinfos_url, params: { studentinfo: {  } }
    end

    assert_redirected_to studentinfo_url(Studentinfo.last)
  end

  test "should show studentinfo" do
    get studentinfo_url(@studentinfo)
    assert_response :success
  end

  test "should get edit" do
    get edit_studentinfo_url(@studentinfo)
    assert_response :success
  end

  test "should update studentinfo" do
    patch studentinfo_url(@studentinfo), params: { studentinfo: {  } }
    assert_redirected_to studentinfo_url(@studentinfo)
  end

  test "should destroy studentinfo" do
    assert_difference('Studentinfo.count', -1) do
      delete studentinfo_url(@studentinfo)
    end

    assert_redirected_to studentinfos_url
  end
end
