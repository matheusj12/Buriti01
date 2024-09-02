require "test_helper"

class TesourariaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tesourarium = tesouraria(:one)
  end

  test "should get index" do
    get tesouraria_url
    assert_response :success
  end

  test "should get new" do
    get new_tesourarium_url
    assert_response :success
  end

  test "should create tesourarium" do
    assert_difference("Tesourarium.count") do
      post tesouraria_url, params: { tesourarium: { categoria: @tesourarium.categoria, data: @tesourarium.data, descricao: @tesourarium.descricao, forma_pagamento: @tesourarium.forma_pagamento, tipo: @tesourarium.tipo, valor: @tesourarium.valor } }
    end

    assert_redirected_to tesourarium_url(Tesourarium.last)
  end

  test "should show tesourarium" do
    get tesourarium_url(@tesourarium)
    assert_response :success
  end

  test "should get edit" do
    get edit_tesourarium_url(@tesourarium)
    assert_response :success
  end

  test "should update tesourarium" do
    patch tesourarium_url(@tesourarium), params: { tesourarium: { categoria: @tesourarium.categoria, data: @tesourarium.data, descricao: @tesourarium.descricao, forma_pagamento: @tesourarium.forma_pagamento, tipo: @tesourarium.tipo, valor: @tesourarium.valor } }
    assert_redirected_to tesourarium_url(@tesourarium)
  end

  test "should destroy tesourarium" do
    assert_difference("Tesourarium.count", -1) do
      delete tesourarium_url(@tesourarium)
    end

    assert_redirected_to tesouraria_url
  end
end
