require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address: @client.address, cep: @client.cep, cpf: @client.cpf, date_born: @client.date_born, email: @client.email, name: @client.name, owner: @client.owner, phone_cel: @client.phone_cel, phone_comercial: @client.phone_comercial, phone_residential: @client.phone_residential, reference: @client.reference, rg: @client.rg }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client, client: { address: @client.address, cep: @client.cep, cpf: @client.cpf, date_born: @client.date_born, email: @client.email, name: @client.name, owner: @client.owner, phone_cel: @client.phone_cel, phone_comercial: @client.phone_comercial, phone_residential: @client.phone_residential, reference: @client.reference, rg: @client.rg }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
