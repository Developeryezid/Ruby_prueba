class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :identificacion
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido

      t.references :document, null: false, foreign_key: true
      t.references :role, null: false, foreign_key: true
      t.timestamps
    end
  end
end
