json.extract! registro_estudiante, :id, :usuario, :carnet, :contra, :created_at, :updated_at
json.url registro_estudiante_url(registro_estudiante, format: :json)
