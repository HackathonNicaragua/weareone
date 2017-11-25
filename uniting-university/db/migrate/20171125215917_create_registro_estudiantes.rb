class CreateRegistroEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :registro_estudiantes do |t|
      t.string :usuario
      t.string :carnet
      t.string :contra

      t.timestamps
    end
  end
end
