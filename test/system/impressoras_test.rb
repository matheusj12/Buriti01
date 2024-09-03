require "application_system_test_case"

class ImpressorasTest < ApplicationSystemTestCase
  setup do
    @impressora = impressoras(:one)
  end

  test "visiting the index" do
    visit impressoras_url
    assert_selector "h1", text: "Impressoras"
  end

  test "should create impressora" do
    visit impressoras_url
    click_on "New impressora"

    fill_in "Ip", with: @impressora.IP
    check "Ativa" if @impressora.ativa
    fill_in "Departamento", with: @impressora.departamento
    fill_in "Info", with: @impressora.info
    fill_in "Info1", with: @impressora.info1
    fill_in "Info3", with: @impressora.info3
    fill_in "Info4", with: @impressora.info4
    fill_in "Info5", with: @impressora.info5
    fill_in "Ip", with: @impressora.ip
    fill_in "Loja", with: @impressora.loja
    fill_in "Modelo", with: @impressora.modelo
    fill_in "Ngps", with: @impressora.nGps
    fill_in "Npatrimonio", with: @impressora.nPatrimonio
    fill_in "Nserie", with: @impressora.nSerie
    fill_in "Proprietario", with: @impressora.proprietario
    fill_in "Tempodeuso", with: @impressora.tempodeuso
    fill_in "Tonermodelo", with: @impressora.tonerModelo
    click_on "Create Impressora"

    assert_text "Impressora was successfully created"
    click_on "Back"
  end

  test "should update Impressora" do
    visit impressora_url(@impressora)
    click_on "Edit this impressora", match: :first

    fill_in "Ip", with: @impressora.IP
    check "Ativa" if @impressora.ativa
    fill_in "Departamento", with: @impressora.departamento
    fill_in "Info", with: @impressora.info
    fill_in "Info1", with: @impressora.info1
    fill_in "Info3", with: @impressora.info3
    fill_in "Info4", with: @impressora.info4
    fill_in "Info5", with: @impressora.info5
    fill_in "Ip", with: @impressora.ip
    fill_in "Loja", with: @impressora.loja
    fill_in "Modelo", with: @impressora.modelo
    fill_in "Ngps", with: @impressora.nGps
    fill_in "Npatrimonio", with: @impressora.nPatrimonio
    fill_in "Nserie", with: @impressora.nSerie
    fill_in "Proprietario", with: @impressora.proprietario
    fill_in "Tempodeuso", with: @impressora.tempodeuso
    fill_in "Tonermodelo", with: @impressora.tonerModelo
    click_on "Update Impressora"

    assert_text "Impressora was successfully updated"
    click_on "Back"
  end

  test "should destroy Impressora" do
    visit impressora_url(@impressora)
    click_on "Destroy this impressora", match: :first

    assert_text "Impressora was successfully destroyed"
  end
end
