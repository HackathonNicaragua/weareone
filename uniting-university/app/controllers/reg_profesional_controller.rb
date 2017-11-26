class RegProfesionalController < ApplicationController
  def post
    @nombre_apellido = params[:nombre_apellido]
  	@usuariopro = params[:usuariopro]
  	@emailpro = params[:emailpro]
    @contrasenapro = params[:contrasenapro]
  	@reg_profesional = Reg_profesional.create({nombre_apellido: @nombre_apellido,usuariopro: @usuariopro,emailpro: @emailpro,contrasenapro: @contrasenapro})

  end
end
