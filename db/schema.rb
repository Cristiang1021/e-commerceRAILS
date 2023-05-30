# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_30_051259) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "NombreCategoria"
    t.string "Descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.integer "IDUsuario"
    t.integer "IDProducto"
    t.string "Comentario"
    t.datetime "FechaComentario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalles_pedidos", force: :cascade do |t|
    t.integer "IDPedido"
    t.integer "IDProducto"
    t.integer "Cantidad"
    t.decimal "Precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "factura_electronicas", force: :cascade do |t|
    t.integer "IDPedido"
    t.string "NumeroFactura"
    t.datetime "FechaFactura"
    t.decimal "Subtotal"
    t.decimal "Impuestos"
    t.decimal "Total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventarios", id: :serial, force: :cascade do |t|
    t.integer "IDProducto", null: false
    t.integer "Cantidad", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["IDProducto"], name: "index_inventarios_on_IDProducto", unique: true
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "IDUsuario"
    t.datetime "FechaPedido"
    t.decimal "Subtotal"
    t.decimal "Impuestos"
    t.decimal "CostoEnvio"
    t.decimal "Total"
    t.string "TipoPago"
    t.string "EstadoPedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "NombreProducto"
    t.string "Descripcion"
    t.string "Color"
    t.string "Estilo"
    t.string "Genero"
    t.integer "Talla"
    t.float "Precio"
    t.string "URLImagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "NombreProveedor"
    t.string "Direccion"
    t.string "Ciudad"
    t.string "Provincia"
    t.string "Telefono"
    t.string "CorreoElectronico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recomendacions", force: :cascade do |t|
    t.string "Recomendacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ubicacions", force: :cascade do |t|
    t.string "Direccion"
    t.string "Ciudad"
    t.string "Provincia"
    t.string "Telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "IDUbicacion"
    t.string "Nombre"
    t.string "Apellido"
    t.string "CorreoElectronico"
    t.string "Contrasena"
    t.string "Telefono"
    t.boolean "EsAdmin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["IDUbicacion"], name: "index_usuarios_on_IDUbicacion"
  end

end
