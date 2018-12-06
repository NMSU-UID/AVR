require 'test_helper'

class ItemsModsJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @items_mods_join = items_mods_joins(:one)
  end

  test "should get index" do
    get items_mods_joins_url
    assert_response :success
  end

  test "should get new" do
    get new_items_mods_join_url
    assert_response :success
  end

  test "should create items_mods_join" do
    assert_difference('ItemsModsJoin.count') do
      post items_mods_joins_url, params: { items_mods_join: { menuitems_id: @items_mods_join.menuitems_id, mods_id: @items_mods_join.mods_id } }
    end

    assert_redirected_to items_mods_join_url(ItemsModsJoin.last)
  end

  test "should show items_mods_join" do
    get items_mods_join_url(@items_mods_join)
    assert_response :success
  end

  test "should get edit" do
    get edit_items_mods_join_url(@items_mods_join)
    assert_response :success
  end

  test "should update items_mods_join" do
    patch items_mods_join_url(@items_mods_join), params: { items_mods_join: { menuitems_id: @items_mods_join.menuitems_id, mods_id: @items_mods_join.mods_id } }
    assert_redirected_to items_mods_join_url(@items_mods_join)
  end

  test "should destroy items_mods_join" do
    assert_difference('ItemsModsJoin.count', -1) do
      delete items_mods_join_url(@items_mods_join)
    end

    assert_redirected_to items_mods_joins_url
  end
end
