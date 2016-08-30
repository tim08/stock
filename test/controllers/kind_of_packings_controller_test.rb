require 'test_helper'

class KindOfPackingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kind_of_packing = kind_of_packings(:one)
  end

  test "should get index" do
    get kind_of_packings_url
    assert_response :success
  end

  test "should get new" do
    get new_kind_of_packing_url
    assert_response :success
  end

  test "should create kind_of_packing" do
    assert_difference('KindOfPacking.count') do
      post kind_of_packings_url, params: { kind_of_packing: { description: @kind_of_packing.description, name: @kind_of_packing.name } }
    end

    assert_redirected_to kind_of_packing_url(KindOfPacking.last)
  end

  test "should show kind_of_packing" do
    get kind_of_packing_url(@kind_of_packing)
    assert_response :success
  end

  test "should get edit" do
    get edit_kind_of_packing_url(@kind_of_packing)
    assert_response :success
  end

  test "should update kind_of_packing" do
    patch kind_of_packing_url(@kind_of_packing), params: { kind_of_packing: { description: @kind_of_packing.description, name: @kind_of_packing.name } }
    assert_redirected_to kind_of_packing_url(@kind_of_packing)
  end

  test "should destroy kind_of_packing" do
    assert_difference('KindOfPacking.count', -1) do
      delete kind_of_packing_url(@kind_of_packing)
    end

    assert_redirected_to kind_of_packings_url
  end
end
