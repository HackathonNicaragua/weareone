json.extract! reg_profe, :id, :nombre_apellido, :usuario, :contrasena, :email, :created_at, :updated_at
json.url reg_profe_url(reg_profe, format: :json)
