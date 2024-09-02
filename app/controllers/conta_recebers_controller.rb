class ContaRecebersController < ApplicationController
  before_action :set_conta_receber, only: %i[ show edit update destroy ]

  # GET /conta_recebers or /conta_recebers.json
  def index
    @conta_recebers = ContaReceber.all
  end

  # GET /conta_recebers/1 or /conta_recebers/1.json
  def show
  end

  # GET /conta_recebers/new
  def new
    @conta_receber = ContaReceber.new
  end

  # GET /conta_recebers/1/edit
  def edit
  end

  # POST /conta_recebers or /conta_recebers.json
  def create
    @conta_receber = ContaReceber.new(conta_receber_params)

    respond_to do |format|
      if @conta_receber.save
        format.html { redirect_to conta_receber_url(@conta_receber), notice: "Conta receber was successfully created." }
        format.json { render :show, status: :created, location: @conta_receber }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conta_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conta_recebers/1 or /conta_recebers/1.json
  def update
    respond_to do |format|
      if @conta_receber.update(conta_receber_params)
        format.html { redirect_to conta_receber_url(@conta_receber), notice: "Conta receber was successfully updated." }
        format.json { render :show, status: :ok, location: @conta_receber }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conta_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta_recebers/1 or /conta_recebers/1.json
  def destroy
    @conta_receber.destroy!

    respond_to do |format|
      format.html { redirect_to conta_recebers_url, notice: "Conta receber was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta_receber
      @conta_receber = ContaReceber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conta_receber_params
      params.require(:conta_receber).permit(:cliente, :data_vencimento, :valor, :descricao, :status, :data_recebimento)
    end
end
