class CreateRegProfesionals < ActiveRecord::Migration[5.1]
  def change
    create_table :reg_profesionals do |t|
      t.string :nombre_apellido
      t.string :usuariopro
      t.string :emailpro
      t.string :contrasenapro

      t.timestamps
    end
  end
end
