class CreateRealties < ActiveRecord::Migration
  def change
    create_table :realties do |t|
      t.references :client
      t.integer :client_price
      t.integer :sale_price
      t.integer :constructed_area
      t.integer :total_area
      t.float :terrain_width
      t.float :terrain_lenght
      t.integer :dorms_count
      t.integer :suites_count
      t.integer :bathroom_count
      t.integer :floor_number
      t.string :building_name
      t.date :date_construction
      t.integer :garage_count
      t.text :description
      t.string :address
      t.references :district
      t.integer :cep
      t.string :adjunt
      t.string :reference
      t.string :lat
      t.string :long
      t.references :RealtyPurpose
      t.references :RealtyType
      t.boolean :web_show_sell_price
      t.boolean :web_show_address

      t.timestamps
    end
    add_index :realties, :client_id
    add_index :realties, :district_id
    add_index :realties, :RealtyPurpose_id
    add_index :realties, :RealtyType_id
  end
end
