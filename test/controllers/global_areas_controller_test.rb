require 'test_helper'

class GlobalAreasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @global_area = global_areas(:one)
  end

  test "should get index" do
    get global_areas_url
    assert_response :success
  end

  test "should get new" do
    get new_global_area_url
    assert_response :success
  end

  test "should create global_area" do
    assert_difference('GlobalArea.count') do
      post global_areas_url, params: { global_area: { active: @global_area.active, description: @global_area.description, name: @global_area.name } }
    end

    assert_redirected_to global_area_url(GlobalArea.last)
  end

  test "should show global_area" do
    get global_area_url(@global_area)
    assert_response :success
  end

  test "should get edit" do
    get edit_global_area_url(@global_area)
    assert_response :success
  end

  test "should update global_area" do
    patch global_area_url(@global_area), params: { global_area: { active: @global_area.active, description: @global_area.description, name: @global_area.name } }
    assert_redirected_to global_area_url(@global_area)
  end

  test "should destroy global_area" do
    assert_difference('GlobalArea.count', -1) do
      delete global_area_url(@global_area)
    end

    assert_redirected_to global_areas_url
  end
end
