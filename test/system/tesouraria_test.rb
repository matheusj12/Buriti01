require "application_system_test_case"

class TesourariaTest < ApplicationSystemTestCase
  setup do
    @tesourarium = tesouraria(:one)
  end

  test "visiting the index" do
    visit tesouraria_url
    assert_selector "h1", text: "Tesouraria"
  end

  test "should create tesourarium" do
    visit tesouraria_url
    click_on "New tesourarium"

    fill_in "Categoria", with: @tesourarium.categoria
    fill_in "Data", with: @tesourarium.data
    fill_in "Descricao", with: @tesourarium.descricao
    fill_in "Forma pagamento", with: @tesourarium.forma_pagamento
    fill_in "Tipo", with: @tesourarium.tipo
    fill_in "Valor", with: @tesourarium.valor
    click_on "Create Tesourarium"

    assert_text "Tesourarium was successfully created"
    click_on "Back"
  end

  test "should update Tesourarium" do
    visit tesourarium_url(@tesourarium)
    click_on "Edit this tesourarium", match: :first

    fill_in "Categoria", with: @tesourarium.categoria
    fill_in "Data", with: @tesourarium.data
    fill_in "Descricao", with: @tesourarium.descricao
    fill_in "Forma pagamento", with: @tesourarium.forma_pagamento
    fill_in "Tipo", with: @tesourarium.tipo
    fill_in "Valor", with: @tesourarium.valor
    click_on "Update Tesourarium"

    assert_text "Tesourarium was successfully updated"
    click_on "Back"
  end

  test "should destroy Tesourarium" do
    visit tesourarium_url(@tesourarium)
    click_on "Destroy this tesourarium", match: :first

    assert_text "Tesourarium was successfully destroyed"
  end
end
