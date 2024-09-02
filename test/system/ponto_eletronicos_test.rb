require "application_system_test_case"

class PontoEletronicosTest < ApplicationSystemTestCase
  setup do
    @ponto_eletronico = ponto_eletronicos(:one)
  end

  test "visiting the index" do
    visit ponto_eletronicos_url
    assert_selector "h1", text: "Ponto eletronicos"
  end

  test "should create ponto eletronico" do
    visit ponto_eletronicos_url
    click_on "New ponto eletronico"

    fill_in "Data", with: @ponto_eletronico.data
    fill_in "Funcionario", with: @ponto_eletronico.funcionario
    fill_in "Hora entrada", with: @ponto_eletronico.hora_entrada
    fill_in "Hora saida", with: @ponto_eletronico.hora_saida
    fill_in "Horas trabalhadas", with: @ponto_eletronico.horas_trabalhadas
    click_on "Create Ponto eletronico"

    assert_text "Ponto eletronico was successfully created"
    click_on "Back"
  end

  test "should update Ponto eletronico" do
    visit ponto_eletronico_url(@ponto_eletronico)
    click_on "Edit this ponto eletronico", match: :first

    fill_in "Data", with: @ponto_eletronico.data
    fill_in "Funcionario", with: @ponto_eletronico.funcionario
    fill_in "Hora entrada", with: @ponto_eletronico.hora_entrada.to_s
    fill_in "Hora saida", with: @ponto_eletronico.hora_saida.to_s
    fill_in "Horas trabalhadas", with: @ponto_eletronico.horas_trabalhadas
    click_on "Update Ponto eletronico"

    assert_text "Ponto eletronico was successfully updated"
    click_on "Back"
  end

  test "should destroy Ponto eletronico" do
    visit ponto_eletronico_url(@ponto_eletronico)
    click_on "Destroy this ponto eletronico", match: :first

    assert_text "Ponto eletronico was successfully destroyed"
  end
end
