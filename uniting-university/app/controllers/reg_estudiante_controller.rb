class RegEstudianteController < ApplicationController
  def get
    @usuario = params[:usuario]
  	@carnet = params[:carnet]
  	@contrasena = params[:contrasena]
  	@regis_estudiante = Regis_estudiante.create({usuario: @usuario,carnet: @carnet,contrasena: @contrasena})

  end
end
