class TitulosBaixadosController < ApplicationController
  before_action :set_titulos_baixado, only: %i[ show edit update destroy ]

  # GET /titulos_baixados or /titulos_baixados.json
  def index
    @titulos_baixados = TitulosBaixado.all
  end

  # GET /titulos_baixados/1 or /titulos_baixados/1.json
  def show
  end

  # GET /titulos_baixados/new
  def new
    @titulos_baixado = TitulosBaixado.new
  end

  # GET /titulos_baixados/1/edit
  def edit
  end

  # POST /titulos_baixados or /titulos_baixados.json
  def create
    @titulos_baixado = TitulosBaixado.new(titulos_baixado_params)

    respond_to do |format|
      if @titulos_baixado.save
        format.html { redirect_to titulos_baixado_url(@titulos_baixado), notice: "Titulos baixado was successfully created." }
        format.json { render :show, status: :created, location: @titulos_baixado }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @titulos_baixado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titulos_baixados/1 or /titulos_baixados/1.json
  def update
    respond_to do |format|
      if @titulos_baixado.update(titulos_baixado_params)
        format.html { redirect_to titulos_baixado_url(@titulos_baixado), notice: "Titulos baixado was successfully updated." }
        format.json { render :show, status: :ok, location: @titulos_baixado }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @titulos_baixado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titulos_baixados/1 or /titulos_baixados/1.json
  def destroy
    @titulos_baixado.destroy!

    respond_to do |format|
      format.html { redirect_to titulos_baixados_url, notice: "Titulos baixado was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titulos_baixado
      @titulos_baixado = TitulosBaixado.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def titulos_baixado_params
      params.require(:titulos_baixado).permit(:cliente, :data_vencimento, :valor, :descricao, :data_pagamento)
    end
end
