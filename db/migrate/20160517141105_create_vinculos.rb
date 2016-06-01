class CreateVinculos < ActiveRecord::Migration
  def change
    create_table :vinculos do |t|
      t.string :comochegar
      t.string :atende
      t.references :unidade, index: true, foreign_key: true
      t.references :profissional, index: true, foreign_key: true
      t.references :especialidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
