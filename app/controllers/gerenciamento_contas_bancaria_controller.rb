class GerenciamentoContasBancariaController < ApplicationController
  before_action :set_gerenciamento_contas_bancarium, only: %i[ show edit update destroy ]

  # GET /gerenciamento_contas_bancaria or /gerenciamento_contas_bancaria.json
  def index
    @gerenciamento_contas_bancaria = GerenciamentoContasBancarium.all
  end

  # GET /gerenciamento_contas_bancaria/1 or /gerenciamento_contas_bancaria/1.json
  def show
  end

  # GET /gerenciamento_contas_bancaria/new
  def new
    @gerenciamento_contas_bancarium = GerenciamentoContasBancarium.new
  end

  # GET /gerenciamento_contas_bancaria/1/edit
  def edit
  end

  # POST /gerenciamento_contas_bancaria or /gerenciamento_contas_bancaria.json
  def create
    @gerenciamento_contas_bancarium = GerenciamentoContasBancarium.new(gerenciamento_contas_bancarium_params)

    respond_to do |format|
      if @gerenciamento_contas_bancarium.save
        format.html { redirect_to gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium), notice: "Gerenciamento contas bancarium was successfully created." }
        format.json { render :show, status: :created, location: @gerenciamento_contas_bancarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @gerenciamento_contas_bancarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gerenciamento_contas_bancaria/1 or /gerenciamento_contas_bancaria/1.json
  def update
    respond_to do |format|
      if @gerenciamento_contas_bancarium.update(gerenciamento_contas_bancarium_params)
        format.html { redirect_to gerenciamento_contas_bancarium_url(@gerenciamento_contas_bancarium), notice: "Gerenciamento contas bancarium was successfully updated." }
        format.json { render :show, status: :ok, location: @gerenciamento_contas_bancarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @gerenciamento_contas_bancarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gerenciamento_contas_bancaria/1 or /gerenciamento_contas_bancaria/1.json
  def destroy
    @gerenciamento_contas_bancarium.destroy!

    respond_to do |format|
      format.html { redirect_to gerenciamento_contas_bancaria_url, notice: "Gerenciamento contas bancarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gerenciamento_contas_bancarium
      @gerenciamento_contas_bancarium = GerenciamentoContasBancarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gerenciamento_contas_bancarium_params
      params.require(:gerenciamento_contas_bancarium).permit(:banco, :agencia, :conta, :tipo, :saldo, :data_abertura, :titular)
    end
end
