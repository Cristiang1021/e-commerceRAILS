class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos do |t|
      t.string :NombreProducto
      t.string :Descripcion
      t.string :Color
      t.string :Estilo
      t.string :Genero
      t.integer :Talla
      t.float :Precio
      t.string :URLImagen

      t.timestamps
    end
  end
end
