class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.integer :IDUsuario
      t.datetime :FechaPedido
      t.decimal :Subtotal
      t.decimal :Impuestos
      t.decimal :CostoEnvio
      t.decimal :Total
      t.string :TipoPago
      t.string :EstadoPedido

      t.timestamps
    end
  end
end
