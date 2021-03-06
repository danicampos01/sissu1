require 'test_helper'

class VinculosControllerTest < ActionController::TestCase
  setup do
    @vinculo = vinculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vinculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vinculo" do
    assert_difference('Vinculo.count') do
      post :create, vinculo: { atende: @vinculo.atende, comochegar: @vinculo.comochegar, especialidade_id: @vinculo.especialidade_id, profissional_id: @vinculo.profissional_id, unidade_id: @vinculo.unidade_id }
    end

    assert_redirected_to vinculo_path(assigns(:vinculo))
  end

  test "should show vinculo" do
    get :show, id: @vinculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vinculo
    assert_response :success
  end

  test "should update vinculo" do
    patch :update, id: @vinculo, vinculo: { atende: @vinculo.atende, comochegar: @vinculo.comochegar, especialidade_id: @vinculo.especialidade_id, profissional_id: @vinculo.profissional_id, unidade_id: @vinculo.unidade_id }
    assert_redirected_to vinculo_path(assigns(:vinculo))
  end

  test "should destroy vinculo" do
    assert_difference('Vinculo.count', -1) do
      delete :destroy, id: @vinculo
    end

    assert_redirected_to vinculos_path
  end
end
