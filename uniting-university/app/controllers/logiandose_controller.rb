class LogiandoseController < ApplicationController
  def post
    @usuario = params[:usuario]
    @contrasena = params[:contrasena]
    
  end
end
