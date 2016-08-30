require 'test_helper'

class HistoryTransferOfProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @history_transfer_of_product = history_transfer_of_products(:one)
  end

  test "should get index" do
    get history_transfer_of_products_url
    assert_response :success
  end

  test "should get new" do
    get new_history_transfer_of_product_url
    assert_response :success
  end

  test "should create history_transfer_of_product" do
    assert_difference('HistoryTransferOfProduct.count') do
      post history_transfer_of_products_url, params: { history_transfer_of_product: { date_in: @history_transfer_of_product.date_in, date_out: @history_transfer_of_product.date_out, description: @history_transfer_of_product.description, product_id: @history_transfer_of_product.product_id } }
    end

    assert_redirected_to history_transfer_of_product_url(HistoryTransferOfProduct.last)
  end

  test "should show history_transfer_of_product" do
    get history_transfer_of_product_url(@history_transfer_of_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_history_transfer_of_product_url(@history_transfer_of_product)
    assert_response :success
  end

  test "should update history_transfer_of_product" do
    patch history_transfer_of_product_url(@history_transfer_of_product), params: { history_transfer_of_product: { date_in: @history_transfer_of_product.date_in, date_out: @history_transfer_of_product.date_out, description: @history_transfer_of_product.description, product_id: @history_transfer_of_product.product_id } }
    assert_redirected_to history_transfer_of_product_url(@history_transfer_of_product)
  end

  test "should destroy history_transfer_of_product" do
    assert_difference('HistoryTransferOfProduct.count', -1) do
      delete history_transfer_of_product_url(@history_transfer_of_product)
    end

    assert_redirected_to history_transfer_of_products_url
  end
end
