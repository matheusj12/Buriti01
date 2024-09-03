class ImpressorasController < ApplicationController
  before_action :set_impressora, only: %i[ show edit update destroy ]

  # GET /impressoras or /impressoras.json
  def index
    @impressoras = Impressora.all
  end

  # GET /impressoras/1 or /impressoras/1.json
  def show
  end

  # GET /impressoras/new
  def new
    @impressora = Impressora.new
  end

  # GET /impressoras/1/edit
  def edit
  end

  # POST /impressoras or /impressoras.json
  def create
    @impressora = Impressora.new(impressora_params)

    respond_to do |format|
      if @impressora.save
        format.html { redirect_to impressora_url(@impressora), notice: "Impressora was successfully created." }
        format.json { render :show, status: :created, location: @impressora }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @impressora.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impressoras/1 or /impressoras/1.json
  def update
    respond_to do |format|
      if @impressora.update(impressora_params)
        format.html { redirect_to impressora_url(@impressora), notice: "Impressora was successfully updated." }
        format.json { render :show, status: :ok, location: @impressora }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @impressora.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impressoras/1 or /impressoras/1.json
  def destroy
    @impressora.destroy!

    respond_to do |format|
      format.html { redirect_to impressoras_url, notice: "Impressora was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impressora
      @impressora = Impressora.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def impressora_params
      params.require(:impressora).permit(
        :departamento, :loja, :proprietario, :modelo, :nPatrimonio, :nSerie, :nGps,
        :foto, :toner_foto, :tonerModelo, :toner_quantity, :stock, :ativa, :tempodeuso,
        :info, :info1, :info3, :info4, :info5
      )
    end
end
