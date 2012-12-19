require 'test_helper'

class RealtyPurposesControllerTest < ActionController::TestCase
  setup do
    @realty_purpose = realty_purposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realty_purposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realty_purpose" do
    assert_difference('RealtyPurpose.count') do
      post :create, realty_purpose: { description: @realty_purpose.description, name: @realty_purpose.name }
    end

    assert_redirected_to realty_purpose_path(assigns(:realty_purpose))
  end

  test "should show realty_purpose" do
    get :show, id: @realty_purpose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realty_purpose
    assert_response :success
  end

  test "should update realty_purpose" do
    put :update, id: @realty_purpose, realty_purpose: { description: @realty_purpose.description, name: @realty_purpose.name }
    assert_redirected_to realty_purpose_path(assigns(:realty_purpose))
  end

  test "should destroy realty_purpose" do
    assert_difference('RealtyPurpose.count', -1) do
      delete :destroy, id: @realty_purpose
    end

    assert_redirected_to realty_purposes_path
  end
end
