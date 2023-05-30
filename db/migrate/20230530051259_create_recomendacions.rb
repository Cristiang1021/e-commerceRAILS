class CreateRecomendacions < ActiveRecord::Migration[7.0]
  def change
    create_table :recomendacions do |t|
      t.string :Recomendacion

      t.timestamps
    end
  end
end
