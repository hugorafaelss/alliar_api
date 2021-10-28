require "test_helper"

class LaboratoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laboratorio = laboratorios(:one)
  end

  test "should get index" do
    get laboratorios_url, as: :json
    assert_response :success
  end

  test "should create laboratorio" do
    assert_difference('Laboratorio.count') do
      post laboratorios_url, params: { laboratorio: { endereco: @laboratorio.endereco, nome: @laboratorio.nome, status: @laboratorio.status } }, as: :json
    end

    assert_response 201
  end

  test "should show laboratorio" do
    get laboratorio_url(@laboratorio), as: :json
    assert_response :success
  end

  test "should update laboratorio" do
    patch laboratorio_url(@laboratorio), params: { laboratorio: { endereco: @laboratorio.endereco, nome: @laboratorio.nome, status: @laboratorio.status } }, as: :json
    assert_response 200
  end

  test "should destroy laboratorio" do
    assert_difference('Laboratorio.count', -1) do
      delete laboratorio_url(@laboratorio), as: :json
    end

    assert_response 204
  end
end
