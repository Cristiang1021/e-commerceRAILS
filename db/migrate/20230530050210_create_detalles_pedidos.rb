class CreateDetallesPedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :detalles_pedidos do |t|
      t.integer :IDPedido
      t.integer :IDProducto
      t.integer :Cantidad
      t.decimal :Precio

      t.timestamps
    end
  end
end
