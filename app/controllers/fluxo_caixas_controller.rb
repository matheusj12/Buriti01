class FluxoCaixasController < ApplicationController
  before_action :set_fluxo_caixa, only: %i[ show edit update destroy ]

  # GET /fluxo_caixas or /fluxo_caixas.json
  def index
    @fluxo_caixas = FluxoCaixa.all
  end

  # GET /fluxo_caixas/1 or /fluxo_caixas/1.json
  def show
  end

  # GET /fluxo_caixas/new
  def new
    @fluxo_caixa = FluxoCaixa.new
  end

  # GET /fluxo_caixas/1/edit
  def edit
  end

  # POST /fluxo_caixas or /fluxo_caixas.json
  def create
    @fluxo_caixa = FluxoCaixa.new(fluxo_caixa_params)

    respond_to do |format|
      if @fluxo_caixa.save
        format.html { redirect_to fluxo_caixa_url(@fluxo_caixa), notice: "Fluxo caixa was successfully created." }
        format.json { render :show, status: :created, location: @fluxo_caixa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fluxo_caixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fluxo_caixas/1 or /fluxo_caixas/1.json
  def update
    respond_to do |format|
      if @fluxo_caixa.update(fluxo_caixa_params)
        format.html { redirect_to fluxo_caixa_url(@fluxo_caixa), notice: "Fluxo caixa was successfully updated." }
        format.json { render :show, status: :ok, location: @fluxo_caixa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fluxo_caixa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fluxo_caixas/1 or /fluxo_caixas/1.json
  def destroy
    @fluxo_caixa.destroy!

    respond_to do |format|
      format.html { redirect_to fluxo_caixas_url, notice: "Fluxo caixa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fluxo_caixa
      @fluxo_caixa = FluxoCaixa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fluxo_caixa_params
      params.require(:fluxo_caixa).permit(:tipo, :data, :valor, :descricao, :categoria)
    end
end
