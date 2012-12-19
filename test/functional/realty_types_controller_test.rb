require 'test_helper'

class RealtyTypesControllerTest < ActionController::TestCase
  setup do
    @realty_type = realty_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realty_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realty_type" do
    assert_difference('RealtyType.count') do
      post :create, realty_type: { description: @realty_type.description, name: @realty_type.name }
    end

    assert_redirected_to realty_type_path(assigns(:realty_type))
  end

  test "should show realty_type" do
    get :show, id: @realty_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realty_type
    assert_response :success
  end

  test "should update realty_type" do
    put :update, id: @realty_type, realty_type: { description: @realty_type.description, name: @realty_type.name }
    assert_redirected_to realty_type_path(assigns(:realty_type))
  end

  test "should destroy realty_type" do
    assert_difference('RealtyType.count', -1) do
      delete :destroy, id: @realty_type
    end

    assert_redirected_to realty_types_path
  end
end
