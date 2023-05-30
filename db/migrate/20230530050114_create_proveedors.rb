class CreateProveedors < ActiveRecord::Migration[7.0]
  def change
    create_table :proveedors do |t|
      t.string :NombreProveedor
      t.string :Direccion
      t.string :Ciudad
      t.string :Provincia
      t.string :Telefono
      t.string :CorreoElectronico

      t.timestamps
    end
  end
end
