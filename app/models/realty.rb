class Realty < ActiveRecord::Base
  belongs_to :client
  belongs_to :district
  belongs_to :RealtyPurpose
  belongs_to :RealtyType
  attr_accessible :address, :adjunt, :bathroom_count, :building_name, :cep, :client_price, :constructed_area, :date_construction, :description, :dorms_count, :floor_number, :garage_count, :lat, :long, :reference, :sale_price, :suites_count, :terrain_lenght, :terrain_width, :total_area, :web_show_address, :web_show_sell_price
end
