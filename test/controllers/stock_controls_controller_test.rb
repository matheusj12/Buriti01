require "test_helper"

class StockControlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_control = stock_controls(:one)
  end

  test "should get index" do
    get stock_controls_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_control_url
    assert_response :success
  end

  test "should create stock_control" do
    assert_difference("StockControl.count") do
      post stock_controls_url, params: { stock_control: { impressora_id: @stock_control.impressora_id, operation_type: @stock_control.operation_type, quantity: @stock_control.quantity } }
    end

    assert_redirected_to stock_control_url(StockControl.last)
  end

  test "should show stock_control" do
    get stock_control_url(@stock_control)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_control_url(@stock_control)
    assert_response :success
  end

  test "should update stock_control" do
    patch stock_control_url(@stock_control), params: { stock_control: { impressora_id: @stock_control.impressora_id, operation_type: @stock_control.operation_type, quantity: @stock_control.quantity } }
    assert_redirected_to stock_control_url(@stock_control)
  end

  test "should destroy stock_control" do
    assert_difference("StockControl.count", -1) do
      delete stock_control_url(@stock_control)
    end

    assert_redirected_to stock_controls_url
  end
end
