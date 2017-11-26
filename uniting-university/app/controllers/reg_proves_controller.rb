class RegProvesController < ApplicationController
  before_action :set_reg_profe, only: [:show, :edit, :update, :destroy]

  # GET /reg_proves
  # GET /reg_proves.json
  def index
    @reg_proves = RegProfe.all
  end

  # GET /reg_proves/1
  # GET /reg_proves/1.json
  def show
  end

  # GET /reg_proves/new
  def new
    @reg_profe = RegProfe.new
  end

  # GET /reg_proves/1/edit
  def edit
  end

  # POST /reg_proves
  # POST /reg_proves.json
  def create
    @reg_profe = RegProfe.new(reg_profe_params)

    respond_to do |format|
      if @reg_profe.save
        format.html { redirect_to @reg_profe, notice: 'Reg profe was successfully created.' }
        format.json { render :show, status: :created, location: @reg_profe }
      else
        format.html { render :new }
        format.json { render json: @reg_profe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reg_proves/1
  # PATCH/PUT /reg_proves/1.json
  def update
    respond_to do |format|
      if @reg_profe.update(reg_profe_params)
        format.html { redirect_to @reg_profe, notice: 'Reg profe was successfully updated.' }
        format.json { render :show, status: :ok, location: @reg_profe }
      else
        format.html { render :edit }
        format.json { render json: @reg_profe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reg_proves/1
  # DELETE /reg_proves/1.json
  def destroy
    @reg_profe.destroy
    respond_to do |format|
      format.html { redirect_to reg_proves_url, notice: 'Reg profe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reg_profe
      @reg_profe = RegProfe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reg_profe_params
      params.require(:reg_profe).permit(:nombre_apellido, :usuario, :contrasena, :email)
    end
end
