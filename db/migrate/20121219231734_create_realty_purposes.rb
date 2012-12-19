class CreateRealtyPurposes < ActiveRecord::Migration
  def change
    create_table :realty_purposes do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
