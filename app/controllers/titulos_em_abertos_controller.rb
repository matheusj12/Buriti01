class TitulosEmAbertosController < ApplicationController
  before_action :set_titulos_em_aberto, only: %i[ show edit update destroy ]

  # GET /titulos_em_abertos or /titulos_em_abertos.json
  def index
    @titulos_em_abertos = TitulosEmAberto.all
  end

  # GET /titulos_em_abertos/1 or /titulos_em_abertos/1.json
  def show
  end

  # GET /titulos_em_abertos/new
  def new
    @titulos_em_aberto = TitulosEmAberto.new
  end

  # GET /titulos_em_abertos/1/edit
  def edit
  end

  # POST /titulos_em_abertos or /titulos_em_abertos.json
  def create
    @titulos_em_aberto = TitulosEmAberto.new(titulos_em_aberto_params)

    respond_to do |format|
      if @titulos_em_aberto.save
        format.html { redirect_to titulos_em_aberto_url(@titulos_em_aberto), notice: "Titulos em aberto was successfully created." }
        format.json { render :show, status: :created, location: @titulos_em_aberto }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @titulos_em_aberto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /titulos_em_abertos/1 or /titulos_em_abertos/1.json
  def update
    respond_to do |format|
      if @titulos_em_aberto.update(titulos_em_aberto_params)
        format.html { redirect_to titulos_em_aberto_url(@titulos_em_aberto), notice: "Titulos em aberto was successfully updated." }
        format.json { render :show, status: :ok, location: @titulos_em_aberto }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @titulos_em_aberto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titulos_em_abertos/1 or /titulos_em_abertos/1.json
  def destroy
    @titulos_em_aberto.destroy!

    respond_to do |format|
      format.html { redirect_to titulos_em_abertos_url, notice: "Titulos em aberto was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_titulos_em_aberto
      @titulos_em_aberto = TitulosEmAberto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def titulos_em_aberto_params
      params.require(:titulos_em_aberto).permit(:cliente, :data_vencimento, :valor, :descricao, :status)
    end
end
