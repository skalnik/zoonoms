require 'test_helper'

class NomsControllerTest < ActionController::TestCase
  setup do
    @nom = noms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:noms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nom" do
    assert_difference('Nom.count') do
      post :create, :nom => @nom.attributes
    end

    assert_redirected_to nom_path(assigns(:nom))
  end

  test "should show nom" do
    get :show, :id => @nom.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @nom.to_param
    assert_response :success
  end

  test "should update nom" do
    put :update, :id => @nom.to_param, :nom => @nom.attributes
    assert_redirected_to nom_path(assigns(:nom))
  end

  test "should destroy nom" do
    assert_difference('Nom.count', -1) do
      delete :destroy, :id => @nom.to_param
    end

    assert_redirected_to noms_path
  end
end
