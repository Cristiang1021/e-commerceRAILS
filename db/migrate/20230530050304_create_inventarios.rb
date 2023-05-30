class CreateInventarios < ActiveRecord::Migration[7.0]
  def change
    create_table :inventarios, id: :serial do |t|
      t.integer :IDProducto, null: false
      t.integer :Cantidad, null: false

      t.timestamps
    end

    add_index :inventarios, :IDProducto, unique: true
  end
end
