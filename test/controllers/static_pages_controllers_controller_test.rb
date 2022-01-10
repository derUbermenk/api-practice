require "test_helper"

class StaticPagesControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @static_pages_controller = static_pages_controllers(:one)
  end

  test "should get index" do
    get static_pages_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_static_pages_controller_url
    assert_response :success
  end

  test "should create static_pages_controller" do
    assert_difference('StaticPagesController.count') do
      post static_pages_controllers_url, params: { static_pages_controller: {  } }
    end

    assert_redirected_to static_pages_controller_url(StaticPagesController.last)
  end

  test "should show static_pages_controller" do
    get static_pages_controller_url(@static_pages_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_static_pages_controller_url(@static_pages_controller)
    assert_response :success
  end

  test "should update static_pages_controller" do
    patch static_pages_controller_url(@static_pages_controller), params: { static_pages_controller: {  } }
    assert_redirected_to static_pages_controller_url(@static_pages_controller)
  end

  test "should destroy static_pages_controller" do
    assert_difference('StaticPagesController.count', -1) do
      delete static_pages_controller_url(@static_pages_controller)
    end

    assert_redirected_to static_pages_controllers_url
  end
end
