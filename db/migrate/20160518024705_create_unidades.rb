class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :nome
      t.string :bairro
      t.string :endereco
      t.string :comochegar
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
