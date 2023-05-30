class CreateUbicacions < ActiveRecord::Migration[7.0]
  def change
    create_table :ubicacions do |t|
      t.string :Direccion
      t.string :Ciudad
      t.string :Provincia
      t.string :Telefono

      t.timestamps
    end
  end
end
