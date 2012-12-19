class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.date :date_born
      t.integer :cpf
      t.integer :rg
      t.string :address
      t.references :district
      t.integer :cep
      t.string :reference
      t.integer :phone_comercial
      t.integer :phone_residential
      t.integer :phone_cel
      t.string :email
      t.boolean :owner

      t.timestamps
    end
    add_index :clients, :district_id
  end
end
