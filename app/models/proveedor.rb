class Proveedor < ApplicationRecord
    establish_connection :development_postgresql
end
