require "test_helper"

class ServicoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get servico_index_url
    assert_response :success
  end

  test "should get show" do
    get servico_show_url
    assert_response :success
  end

  test "should get new" do
    get servico_new_url
    assert_response :success
  end

  test "should get edit" do
    get servico_edit_url
    assert_response :success
  end
end
