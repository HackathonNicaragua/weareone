class RegistroEstudiantesController < ApplicationController
  before_action :set_registro_estudiante, only: [:show, :edit, :update, :destroy]

  # GET /registro_estudiantes
  # GET /registro_estudiantes.json
  def index
    @registro_estudiantes = RegistroEstudiante.all
  end

  # GET /registro_estudiantes/1
  # GET /registro_estudiantes/1.json
  def show
  end

  # GET /registro_estudiantes/new
  def new
    @registro_estudiante = RegistroEstudiante.new
  end

  # GET /registro_estudiantes/1/edit
  def edit
  end

  # POST /registro_estudiantes
  # POST /registro_estudiantes.json
  def create
    @registro_estudiante = RegistroEstudiante.new(registro_estudiante_params)

    respond_to do |format|
      if @registro_estudiante.save
        format.html { redirect_to @registro_estudiante, notice: 'Registro estudiante was successfully created.' }
        format.json { render :show, status: :created, location: @registro_estudiante }
      else
        format.html { render :new }
        format.json { render json: @registro_estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_estudiantes/1
  # PATCH/PUT /registro_estudiantes/1.json
  def update
    respond_to do |format|
      if @registro_estudiante.update(registro_estudiante_params)
        format.html { redirect_to @registro_estudiante, notice: 'Registro estudiante was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_estudiante }
      else
        format.html { render :edit }
        format.json { render json: @registro_estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_estudiantes/1
  # DELETE /registro_estudiantes/1.json
  def destroy
    @registro_estudiante.destroy
    respond_to do |format|
      format.html { redirect_to registro_estudiantes_url, notice: 'Registro estudiante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_estudiante
      @registro_estudiante = RegistroEstudiante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_estudiante_params
      params.require(:registro_estudiante).permit(:usuario, :carnet, :contra)
    end
end
