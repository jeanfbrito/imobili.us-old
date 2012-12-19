class CreateRealtyTypes < ActiveRecord::Migration
  def change
    create_table :realty_types do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
