require "application_system_test_case"

class ConsultaEstoquesTest < ApplicationSystemTestCase
  setup do
    @consulta_estoque = consulta_estoques(:one)
  end

  test "visiting the index" do
    visit consulta_estoques_url
    assert_selector "h1", text: "Consulta estoques"
  end

  test "should create consulta estoque" do
    visit consulta_estoques_url
    click_on "New consulta estoque"

    fill_in "Data entrada", with: @consulta_estoque.data_entrada
    fill_in "Data saida", with: @consulta_estoque.data_saida
    fill_in "Localizacao", with: @consulta_estoque.localizacao
    fill_in "Produto", with: @consulta_estoque.produto
    fill_in "Quantidade", with: @consulta_estoque.quantidade
    fill_in "Valor unitario", with: @consulta_estoque.valor_unitario
    click_on "Create Consulta estoque"

    assert_text "Consulta estoque was successfully created"
    click_on "Back"
  end

  test "should update Consulta estoque" do
    visit consulta_estoque_url(@consulta_estoque)
    click_on "Edit this consulta estoque", match: :first

    fill_in "Data entrada", with: @consulta_estoque.data_entrada
    fill_in "Data saida", with: @consulta_estoque.data_saida
    fill_in "Localizacao", with: @consulta_estoque.localizacao
    fill_in "Produto", with: @consulta_estoque.produto
    fill_in "Quantidade", with: @consulta_estoque.quantidade
    fill_in "Valor unitario", with: @consulta_estoque.valor_unitario
    click_on "Update Consulta estoque"

    assert_text "Consulta estoque was successfully updated"
    click_on "Back"
  end

  test "should destroy Consulta estoque" do
    visit consulta_estoque_url(@consulta_estoque)
    click_on "Destroy this consulta estoque", match: :first

    assert_text "Consulta estoque was successfully destroyed"
  end
end
