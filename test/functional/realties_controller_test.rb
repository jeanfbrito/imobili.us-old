require 'test_helper'

class RealtiesControllerTest < ActionController::TestCase
  setup do
    @realty = realties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realty" do
    assert_difference('Realty.count') do
      post :create, realty: { address: @realty.address, adjunt: @realty.adjunt, bathroom_count: @realty.bathroom_count, building_name: @realty.building_name, cep: @realty.cep, client_price: @realty.client_price, constructed_area: @realty.constructed_area, date_construction: @realty.date_construction, description: @realty.description, dorms_count: @realty.dorms_count, floor_number: @realty.floor_number, garage_count: @realty.garage_count, lat: @realty.lat, long: @realty.long, reference: @realty.reference, sale_price: @realty.sale_price, suites_count: @realty.suites_count, terrain_lenght: @realty.terrain_lenght, terrain_width: @realty.terrain_width, total_area: @realty.total_area, web_show_address: @realty.web_show_address, web_show_sell_price: @realty.web_show_sell_price }
    end

    assert_redirected_to realty_path(assigns(:realty))
  end

  test "should show realty" do
    get :show, id: @realty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realty
    assert_response :success
  end

  test "should update realty" do
    put :update, id: @realty, realty: { address: @realty.address, adjunt: @realty.adjunt, bathroom_count: @realty.bathroom_count, building_name: @realty.building_name, cep: @realty.cep, client_price: @realty.client_price, constructed_area: @realty.constructed_area, date_construction: @realty.date_construction, description: @realty.description, dorms_count: @realty.dorms_count, floor_number: @realty.floor_number, garage_count: @realty.garage_count, lat: @realty.lat, long: @realty.long, reference: @realty.reference, sale_price: @realty.sale_price, suites_count: @realty.suites_count, terrain_lenght: @realty.terrain_lenght, terrain_width: @realty.terrain_width, total_area: @realty.total_area, web_show_address: @realty.web_show_address, web_show_sell_price: @realty.web_show_sell_price }
    assert_redirected_to realty_path(assigns(:realty))
  end

  test "should destroy realty" do
    assert_difference('Realty.count', -1) do
      delete :destroy, id: @realty
    end

    assert_redirected_to realties_path
  end
end
