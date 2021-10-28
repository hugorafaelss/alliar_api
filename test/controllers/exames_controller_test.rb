require "test_helper"

class ExamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exame = exames(:one)
  end

  test "should get index" do
    get exames_url, as: :json
    assert_response :success
  end

  test "should create exame" do
    assert_difference('Exame.count') do
      post exames_url, params: { exame: { nome: @exame.nome, status: @exame.status, tipo: @exame.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show exame" do
    get exame_url(@exame), as: :json
    assert_response :success
  end

  test "should update exame" do
    patch exame_url(@exame), params: { exame: { nome: @exame.nome, status: @exame.status, tipo: @exame.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy exame" do
    assert_difference('Exame.count', -1) do
      delete exame_url(@exame), as: :json
    end

    assert_response 204
  end
end
