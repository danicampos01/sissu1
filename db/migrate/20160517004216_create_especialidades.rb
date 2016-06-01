class CreateEspecialidades < ActiveRecord::Migration
  def change
    create_table :especialidades do |t|
      t.string :nome
      t.text :descric

      t.timestamps null: false
    end
  end
end
