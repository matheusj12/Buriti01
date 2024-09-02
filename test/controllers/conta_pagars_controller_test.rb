require "test_helper"

class ContaPagarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conta_pagar = conta_pagars(:one)
  end

  test "should get index" do
    get conta_pagars_url
    assert_response :success
  end

  test "should get new" do
    get new_conta_pagar_url
    assert_response :success
  end

  test "should create conta_pagar" do
    assert_difference("ContaPagar.count") do
      post conta_pagars_url, params: { conta_pagar: { data_pagamento: @conta_pagar.data_pagamento, data_vencimento: @conta_pagar.data_vencimento, descricao: @conta_pagar.descricao, fornecedor: @conta_pagar.fornecedor, status: @conta_pagar.status, valor: @conta_pagar.valor } }
    end

    assert_redirected_to conta_pagar_url(ContaPagar.last)
  end

  test "should show conta_pagar" do
    get conta_pagar_url(@conta_pagar)
    assert_response :success
  end

  test "should get edit" do
    get edit_conta_pagar_url(@conta_pagar)
    assert_response :success
  end

  test "should update conta_pagar" do
    patch conta_pagar_url(@conta_pagar), params: { conta_pagar: { data_pagamento: @conta_pagar.data_pagamento, data_vencimento: @conta_pagar.data_vencimento, descricao: @conta_pagar.descricao, fornecedor: @conta_pagar.fornecedor, status: @conta_pagar.status, valor: @conta_pagar.valor } }
    assert_redirected_to conta_pagar_url(@conta_pagar)
  end

  test "should destroy conta_pagar" do
    assert_difference("ContaPagar.count", -1) do
      delete conta_pagar_url(@conta_pagar)
    end

    assert_redirected_to conta_pagars_url
  end
end
