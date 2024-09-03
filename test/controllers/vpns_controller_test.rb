require "test_helper"

class VpnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vpn = vpns(:one)
  end

  test "should get index" do
    get vpns_url
    assert_response :success
  end

  test "should get new" do
    get new_vpn_url
    assert_response :success
  end

  test "should create vpn" do
    assert_difference("Vpn.count") do
      post vpns_url, params: { vpn: { chave: @vpn.chave, gatewayremoto: @vpn.gatewayremoto, local: @vpn.local, nomedaconexao: @vpn.nomedaconexao } }
    end

    assert_redirected_to vpn_url(Vpn.last)
  end

  test "should show vpn" do
    get vpn_url(@vpn)
    assert_response :success
  end

  test "should get edit" do
    get edit_vpn_url(@vpn)
    assert_response :success
  end

  test "should update vpn" do
    patch vpn_url(@vpn), params: { vpn: { chave: @vpn.chave, gatewayremoto: @vpn.gatewayremoto, local: @vpn.local, nomedaconexao: @vpn.nomedaconexao } }
    assert_redirected_to vpn_url(@vpn)
  end

  test "should destroy vpn" do
    assert_difference("Vpn.count", -1) do
      delete vpn_url(@vpn)
    end

    assert_redirected_to vpns_url
  end
end
