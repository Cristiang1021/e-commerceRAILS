class Usuario < ApplicationRecord
    establish_connection :development_postgresql
end
