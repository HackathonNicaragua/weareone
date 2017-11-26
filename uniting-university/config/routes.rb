Rails.application.routes.draw do
  get 'reg_estudiante/index'
  root 'reg_estudiante#index'

  get 'logiandose/index'

  get 'materiales_profesional/index'

  get 'materiales_estudiantes/index'

  get 'usuario_profesional/index'

  post 'usuario_estudiante/index'

  get 'visitante/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
