Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  get 'reg_profesional/index'

  get 'reg_estudiante/index'

  post 'logiandose/index'

  get 'materiales_profesional/index'

  get 'materiales_estudiantes/index'

  get 'usuario_profesional/index'

  get 'usuario_estudiante/index'

  get 'visitante/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
