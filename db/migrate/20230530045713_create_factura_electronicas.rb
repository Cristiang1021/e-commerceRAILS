class CreateFacturaElectronicas < ActiveRecord::Migration[7.0]
  def change
    create_table :factura_electronicas do |t|
      t.integer :IDPedido
      t.string :NumeroFactura
      t.datetime :FechaFactura
      t.decimal :Subtotal
      t.decimal :Impuestos
      t.decimal :Total

      t.timestamps
    end
  end
end
