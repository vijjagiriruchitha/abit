require "application_system_test_case"

class StudentinfosTest < ApplicationSystemTestCase
  setup do
    @studentinfo = studentinfos(:one)
  end

  test "visiting the index" do
    visit studentinfos_url
    assert_selector "h1", text: "Studentinfos"
  end

  test "creating a Studentinfo" do
    visit studentinfos_url
    click_on "New Studentinfo"

    click_on "Create Studentinfo"

    assert_text "Studentinfo was successfully created"
    click_on "Back"
  end

  test "updating a Studentinfo" do
    visit studentinfos_url
    click_on "Edit", match: :first

    click_on "Update Studentinfo"

    assert_text "Studentinfo was successfully updated"
    click_on "Back"
  end

  test "destroying a Studentinfo" do
    visit studentinfos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studentinfo was successfully destroyed"
  end
end
