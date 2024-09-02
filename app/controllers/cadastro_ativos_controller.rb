class CadastroAtivosController < ApplicationController
  before_action :set_cadastro_ativo, only: %i[ show edit update destroy ]

  # GET /cadastro_ativos or /cadastro_ativos.json
  def index
    @cadastro_ativos = CadastroAtivo.all
  end

  # GET /cadastro_ativos/1 or /cadastro_ativos/1.json
  def show
  end

  # GET /cadastro_ativos/new
  def new
    @cadastro_ativo = CadastroAtivo.new
  end

  # GET /cadastro_ativos/1/edit
  def edit
  end

  # POST /cadastro_ativos or /cadastro_ativos.json
  def create
    @cadastro_ativo = CadastroAtivo.new(cadastro_ativo_params)

    respond_to do |format|
      if @cadastro_ativo.save
        format.html { redirect_to cadastro_ativo_url(@cadastro_ativo), notice: "Cadastro ativo was successfully created." }
        format.json { render :show, status: :created, location: @cadastro_ativo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cadastro_ativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastro_ativos/1 or /cadastro_ativos/1.json
  def update
    respond_to do |format|
      if @cadastro_ativo.update(cadastro_ativo_params)
        format.html { redirect_to cadastro_ativo_url(@cadastro_ativo), notice: "Cadastro ativo was successfully updated." }
        format.json { render :show, status: :ok, location: @cadastro_ativo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cadastro_ativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastro_ativos/1 or /cadastro_ativos/1.json
  def destroy
    @cadastro_ativo.destroy!

    respond_to do |format|
      format.html { redirect_to cadastro_ativos_url, notice: "Cadastro ativo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro_ativo
      @cadastro_ativo = CadastroAtivo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cadastro_ativo_params
      params.require(:cadastro_ativo).permit(:nome, :descricao, :valor, :data_aquisicao, :localizacao, :status)
    end
end
