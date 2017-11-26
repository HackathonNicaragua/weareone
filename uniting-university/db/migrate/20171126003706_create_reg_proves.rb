class CreateRegProves < ActiveRecord::Migration[5.1]
  def change
    create_table :reg_proves do |t|
      t.string :nombre_apellido
      t.string :usuario
      t.string :contrasena
      t.string :email

      t.timestamps
    end
  end
end
