require "application_system_test_case"

class StockControlsTest < ApplicationSystemTestCase
  setup do
    @stock_control = stock_controls(:one)
  end

  test "visiting the index" do
    visit stock_controls_url
    assert_selector "h1", text: "Stock controls"
  end

  test "should create stock control" do
    visit stock_controls_url
    click_on "New stock control"

    fill_in "Impressora", with: @stock_control.impressora_id
    fill_in "Operation type", with: @stock_control.operation_type
    fill_in "Quantity", with: @stock_control.quantity
    click_on "Create Stock control"

    assert_text "Stock control was successfully created"
    click_on "Back"
  end

  test "should update Stock control" do
    visit stock_control_url(@stock_control)
    click_on "Edit this stock control", match: :first

    fill_in "Impressora", with: @stock_control.impressora_id
    fill_in "Operation type", with: @stock_control.operation_type
    fill_in "Quantity", with: @stock_control.quantity
    click_on "Update Stock control"

    assert_text "Stock control was successfully updated"
    click_on "Back"
  end

  test "should destroy Stock control" do
    visit stock_control_url(@stock_control)
    click_on "Destroy this stock control", match: :first

    assert_text "Stock control was successfully destroyed"
  end
end
