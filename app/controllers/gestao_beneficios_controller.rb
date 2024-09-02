class GestaoBeneficiosController < ApplicationController
  before_action :set_gestao_beneficio, only: %i[ show edit update destroy ]

  # GET /gestao_beneficios or /gestao_beneficios.json
  def index
    @gestao_beneficios = GestaoBeneficio.all
  end

  # GET /gestao_beneficios/1 or /gestao_beneficios/1.json
  def show
  end

  # GET /gestao_beneficios/new
  def new
    @gestao_beneficio = GestaoBeneficio.new
  end

  # GET /gestao_beneficios/1/edit
  def edit
  end

  # POST /gestao_beneficios or /gestao_beneficios.json
  def create
    @gestao_beneficio = GestaoBeneficio.new(gestao_beneficio_params)

    respond_to do |format|
      if @gestao_beneficio.save
        format.html { redirect_to gestao_beneficio_url(@gestao_beneficio), notice: "Gestao beneficio was successfully created." }
        format.json { render :show, status: :created, location: @gestao_beneficio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gestao_beneficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gestao_beneficios/1 or /gestao_beneficios/1.json
  def update
    respond_to do |format|
      if @gestao_beneficio.update(gestao_beneficio_params)
        format.html { redirect_to gestao_beneficio_url(@gestao_beneficio), notice: "Gestao beneficio was successfully updated." }
        format.json { render :show, status: :ok, location: @gestao_beneficio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gestao_beneficio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gestao_beneficios/1 or /gestao_beneficios/1.json
  def destroy
    @gestao_beneficio.destroy!

    respond_to do |format|
      format.html { redirect_to gestao_beneficios_url, notice: "Gestao beneficio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gestao_beneficio
      @gestao_beneficio = GestaoBeneficio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gestao_beneficio_params
      params.require(:gestao_beneficio).permit(:nome, :descricao, :valor, :data_inicio, :data_fim, :ativo)
    end
end
