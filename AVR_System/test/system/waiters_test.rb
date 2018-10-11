require "application_system_test_case"

class WaitersTest < ApplicationSystemTestCase
  setup do
    @waiter = waiters(:one)
  end

  test "visiting the index" do
    visit waiters_url
    assert_selector "h1", text: "Waiters"
  end

  test "creating a Waiter" do
    visit waiters_url
    click_on "New Waiter"

    fill_in "First Name", with: @waiter.first_name
    fill_in "Last Name", with: @waiter.last_name
    fill_in "Pin", with: @waiter.pin
    click_on "Create Waiter"

    assert_text "Waiter was successfully created"
    click_on "Back"
  end

  test "updating a Waiter" do
    visit waiters_url
    click_on "Edit", match: :first

    fill_in "First Name", with: @waiter.first_name
    fill_in "Last Name", with: @waiter.last_name
    fill_in "Pin", with: @waiter.pin
    click_on "Update Waiter"

    assert_text "Waiter was successfully updated"
    click_on "Back"
  end

  test "destroying a Waiter" do
    visit waiters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Waiter was successfully destroyed"
  end
end
