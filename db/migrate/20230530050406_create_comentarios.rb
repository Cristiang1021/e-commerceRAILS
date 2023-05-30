class CreateComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :comentarios do |t|
      t.integer :IDUsuario
      t.integer :IDProducto
      t.string :Comentario
      t.datetime :FechaComentario

      t.timestamps
    end
  end
end
