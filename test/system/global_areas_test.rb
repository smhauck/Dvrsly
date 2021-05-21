require "application_system_test_case"

class GlobalAreasTest < ApplicationSystemTestCase
  setup do
    @global_area = global_areas(:one)
  end

  test "visiting the index" do
    visit global_areas_url
    assert_selector "h1", text: "Global Areas"
  end

  test "creating a Global area" do
    visit global_areas_url
    click_on "New Global Area"

    check "Active" if @global_area.active
    fill_in "Description", with: @global_area.description
    fill_in "Name", with: @global_area.name
    click_on "Create Global area"

    assert_text "Global area was successfully created"
    click_on "Back"
  end

  test "updating a Global area" do
    visit global_areas_url
    click_on "Edit", match: :first

    check "Active" if @global_area.active
    fill_in "Description", with: @global_area.description
    fill_in "Name", with: @global_area.name
    click_on "Update Global area"

    assert_text "Global area was successfully updated"
    click_on "Back"
  end

  test "destroying a Global area" do
    visit global_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Global area was successfully destroyed"
  end
end
