require "application_system_test_case"

class ItemsModsJoinsTest < ApplicationSystemTestCase
  setup do
    @items_mods_join = items_mods_joins(:one)
  end

  test "visiting the index" do
    visit items_mods_joins_url
    assert_selector "h1", text: "Items Mods Joins"
  end

  test "creating a Items mods join" do
    visit items_mods_joins_url
    click_on "New Items Mods Join"

    fill_in "Menuitems", with: @items_mods_join.menuitems_id
    fill_in "Mods", with: @items_mods_join.mods_id
    click_on "Create Items mods join"

    assert_text "Items mods join was successfully created"
    click_on "Back"
  end

  test "updating a Items mods join" do
    visit items_mods_joins_url
    click_on "Edit", match: :first

    fill_in "Menuitems", with: @items_mods_join.menuitems_id
    fill_in "Mods", with: @items_mods_join.mods_id
    click_on "Update Items mods join"

    assert_text "Items mods join was successfully updated"
    click_on "Back"
  end

  test "destroying a Items mods join" do
    visit items_mods_joins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Items mods join was successfully destroyed"
  end
end
