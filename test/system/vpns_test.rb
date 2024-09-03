require "application_system_test_case"

class VpnsTest < ApplicationSystemTestCase
  setup do
    @vpn = vpns(:one)
  end

  test "visiting the index" do
    visit vpns_url
    assert_selector "h1", text: "Vpns"
  end

  test "should create vpn" do
    visit vpns_url
    click_on "New vpn"

    fill_in "Chave", with: @vpn.chave
    fill_in "Gatewayremoto", with: @vpn.gatewayremoto
    fill_in "Local", with: @vpn.local
    fill_in "Nomedaconexao", with: @vpn.nomedaconexao
    click_on "Create Vpn"

    assert_text "Vpn was successfully created"
    click_on "Back"
  end

  test "should update Vpn" do
    visit vpn_url(@vpn)
    click_on "Edit this vpn", match: :first

    fill_in "Chave", with: @vpn.chave
    fill_in "Gatewayremoto", with: @vpn.gatewayremoto
    fill_in "Local", with: @vpn.local
    fill_in "Nomedaconexao", with: @vpn.nomedaconexao
    click_on "Update Vpn"

    assert_text "Vpn was successfully updated"
    click_on "Back"
  end

  test "should destroy Vpn" do
    visit vpn_url(@vpn)
    click_on "Destroy this vpn", match: :first

    assert_text "Vpn was successfully destroyed"
  end
end
