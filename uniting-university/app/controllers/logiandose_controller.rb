class LogiandoseController < ApplicationController
  def post
    @usuario = params[:usuario]
    @contrasena = params[:contrasena]
    #@reg_profesionals = Reg_profesional. where("usuariopro = ? and contrasenapro = ?",@usuario,@contrsena);
    if Regis_estudiante.exists?(usuario: @usuario).present?

    else

    end
  end
end
