class FacturaElectronica < ApplicationRecord
    establish_connection :development_postgresql
end
