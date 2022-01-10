require "application_system_test_case"

class StaticPagesControllersTest < ApplicationSystemTestCase
  setup do
    @static_pages_controller = static_pages_controllers(:one)
  end

  test "visiting the index" do
    visit static_pages_controllers_url
    assert_selector "h1", text: "Static Pages Controllers"
  end

  test "creating a Static pages controller" do
    visit static_pages_controllers_url
    click_on "New Static Pages Controller"

    click_on "Create Static pages controller"

    assert_text "Static pages controller was successfully created"
    click_on "Back"
  end

  test "updating a Static pages controller" do
    visit static_pages_controllers_url
    click_on "Edit", match: :first

    click_on "Update Static pages controller"

    assert_text "Static pages controller was successfully updated"
    click_on "Back"
  end

  test "destroying a Static pages controller" do
    visit static_pages_controllers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Static pages controller was successfully destroyed"
  end
end
