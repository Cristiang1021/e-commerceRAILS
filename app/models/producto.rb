class Producto < ApplicationRecord
    establish_connection :development_postgresql
  end
  