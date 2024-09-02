class RelatoriosController < ApplicationController
  before_action :set_relatorio, only: %i[ show edit update destroy ]

  # GET /relatorios or /relatorios.json
  def index
    @relatorios = Relatorio.all
  end

  # GET /relatorios/1 or /relatorios/1.json
  def show
  end

  # GET /relatorios/new
  def new
    @relatorio = Relatorio.new
  end

  # GET /relatorios/1/edit
  def edit
  end

  # POST /relatorios or /relatorios.json
  def create
    @relatorio = Relatorio.new(relatorio_params)

    respond_to do |format|
      if @relatorio.save
        format.html { redirect_to relatorio_url(@relatorio), notice: "Relatorio was successfully created." }
        format.json { render :show, status: :created, location: @relatorio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @relatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relatorios/1 or /relatorios/1.json
  def update
    respond_to do |format|
      if @relatorio.update(relatorio_params)
        format.html { redirect_to relatorio_url(@relatorio), notice: "Relatorio was successfully updated." }
        format.json { render :show, status: :ok, location: @relatorio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @relatorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relatorios/1 or /relatorios/1.json
  def destroy
    @relatorio.destroy!

    respond_to do |format|
      format.html { redirect_to relatorios_url, notice: "Relatorio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relatorio
      @relatorio = Relatorio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def relatorio_params
      params.require(:relatorio).permit(:nome, :tipo, :descricao, :data_geracao, :conteudo)
    end
end
