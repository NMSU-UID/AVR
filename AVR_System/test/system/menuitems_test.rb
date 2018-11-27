require "application_system_test_case"

class MenuitemsTest < ApplicationSystemTestCase
  setup do
    @menuitem = menuitems(:one)
  end

  test "visiting the index" do
    visit menuitems_url
    assert_selector "h1", text: "Menuitems"
  end

  test "creating a Menuitem" do
    visit menuitems_url
    click_on "New Menuitem"

    fill_in "Category", with: @menuitem.category_id
    fill_in "Name", with: @menuitem.name
    click_on "Create Menuitem"

    assert_text "Menuitem was successfully created"
    click_on "Back"
  end

  test "updating a Menuitem" do
    visit menuitems_url
    click_on "Edit", match: :first

    fill_in "Category", with: @menuitem.category_id
    fill_in "Name", with: @menuitem.name
    click_on "Update Menuitem"

    assert_text "Menuitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Menuitem" do
    visit menuitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Menuitem was successfully destroyed"
  end
end
