class CreateCategoria < ActiveRecord::Migration[7.0]
  def change
    create_table :categoria do |t|
      t.string :NombreCategoria
      t.string :Descripcion

      t.timestamps
    end
  end
end
