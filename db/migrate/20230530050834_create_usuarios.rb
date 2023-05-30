class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.integer :IDUbicacion
      t.string :Nombre
      t.string :Apellido
      t.string :CorreoElectronico
      t.string :Contrasena
      t.string :Telefono
      t.boolean :EsAdmin

      t.timestamps
    end
    add_index :usuarios, :IDUbicacion
  end
end
