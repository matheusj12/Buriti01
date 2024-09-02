class ProcessoAdmissaosController < ApplicationController
  before_action :set_processo_admissao, only: %i[ show edit update destroy ]

  # GET /processo_admissaos or /processo_admissaos.json
  def index
    @processo_admissaos = ProcessoAdmissao.all
  end

  # GET /processo_admissaos/1 or /processo_admissaos/1.json
  def show
  end

  # GET /processo_admissaos/new
  def new
    @processo_admissao = ProcessoAdmissao.new
  end

  # GET /processo_admissaos/1/edit
  def edit
  end

  # POST /processo_admissaos or /processo_admissaos.json
  def create
    @processo_admissao = ProcessoAdmissao.new(processo_admissao_params)

    respond_to do |format|
      if @processo_admissao.save
        format.html { redirect_to processo_admissao_url(@processo_admissao), notice: "Processo admissao was successfully created." }
        format.json { render :show, status: :created, location: @processo_admissao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @processo_admissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /processo_admissaos/1 or /processo_admissaos/1.json
  def update
    respond_to do |format|
      if @processo_admissao.update(processo_admissao_params)
        format.html { redirect_to processo_admissao_url(@processo_admissao), notice: "Processo admissao was successfully updated." }
        format.json { render :show, status: :ok, location: @processo_admissao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @processo_admissao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /processo_admissaos/1 or /processo_admissaos/1.json
  def destroy
    @processo_admissao.destroy!

    respond_to do |format|
      format.html { redirect_to processo_admissaos_url, notice: "Processo admissao was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_processo_admissao
      @processo_admissao = ProcessoAdmissao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def processo_admissao_params
      params.require(:processo_admissao).permit(:funcionario, :data_admissao, :cargo, :salario, :departamento, :status, :data_entrega_documentos)
    end
end
