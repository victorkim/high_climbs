require "application_system_test_case"

class ClimbsTest < ApplicationSystemTestCase
  setup do
    @climb = climbs(:one)
  end

  test "visiting the index" do
    visit climbs_url
    assert_selector "h1", text: "Climbs"
  end

  test "should create climb" do
    visit climbs_url
    click_on "New climb"

    fill_in "Description", with: @climb.description
    fill_in "Grade", with: @climb.grade
    fill_in "Name", with: @climb.name
    click_on "Create Climb"

    assert_text "Climb was successfully created"
    click_on "Back"
  end

  test "should update Climb" do
    visit climb_url(@climb)
    click_on "Edit this climb", match: :first

    fill_in "Description", with: @climb.description
    fill_in "Grade", with: @climb.grade
    fill_in "Name", with: @climb.name
    click_on "Update Climb"

    assert_text "Climb was successfully updated"
    click_on "Back"
  end

  test "should destroy Climb" do
    visit climb_url(@climb)
    click_on "Destroy this climb", match: :first

    assert_text "Climb was successfully destroyed"
  end
end
