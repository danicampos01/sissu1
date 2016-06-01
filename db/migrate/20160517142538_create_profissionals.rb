class CreateProfissionals < ActiveRecord::Migration
  def change
    create_table :profissionals do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
