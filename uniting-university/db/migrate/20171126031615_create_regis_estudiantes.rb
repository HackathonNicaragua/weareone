class CreateRegisEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :regis_estudiantes do |t|
      t.string :usuario
      t.string :carnet
      t.string :contrasena

      t.timestamps
    end
  end
end
