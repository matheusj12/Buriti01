class PontoEletronicosController < ApplicationController
  before_action :set_ponto_eletronico, only: %i[ show edit update destroy ]

  # GET /ponto_eletronicos or /ponto_eletronicos.json
  def index
    @ponto_eletronicos = PontoEletronico.all
  end

  # GET /ponto_eletronicos/1 or /ponto_eletronicos/1.json
  def show
  end

  # GET /ponto_eletronicos/new
  def new
    @ponto_eletronico = PontoEletronico.new
  end

  # GET /ponto_eletronicos/1/edit
  def edit
  end

  # POST /ponto_eletronicos or /ponto_eletronicos.json
  def create
    @ponto_eletronico = PontoEletronico.new(ponto_eletronico_params)

    respond_to do |format|
      if @ponto_eletronico.save
        format.html { redirect_to ponto_eletronico_url(@ponto_eletronico), notice: "Ponto eletronico was successfully created." }
        format.json { render :show, status: :created, location: @ponto_eletronico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ponto_eletronico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ponto_eletronicos/1 or /ponto_eletronicos/1.json
  def update
    respond_to do |format|
      if @ponto_eletronico.update(ponto_eletronico_params)
        format.html { redirect_to ponto_eletronico_url(@ponto_eletronico), notice: "Ponto eletronico was successfully updated." }
        format.json { render :show, status: :ok, location: @ponto_eletronico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ponto_eletronico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponto_eletronicos/1 or /ponto_eletronicos/1.json
  def destroy
    @ponto_eletronico.destroy!

    respond_to do |format|
      format.html { redirect_to ponto_eletronicos_url, notice: "Ponto eletronico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ponto_eletronico
      @ponto_eletronico = PontoEletronico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ponto_eletronico_params
      params.require(:ponto_eletronico).permit(:funcionario, :data, :hora_entrada, :hora_saida, :horas_trabalhadas)
    end
end
