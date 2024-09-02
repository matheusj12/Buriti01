class FolhaPagamentosController < ApplicationController
  before_action :set_folha_pagamento, only: %i[ show edit update destroy ]

  # GET /folha_pagamentos or /folha_pagamentos.json
  def index
    @folha_pagamentos = FolhaPagamento.all
  end

  # GET /folha_pagamentos/1 or /folha_pagamentos/1.json
  def show
  end

  # GET /folha_pagamentos/new
  def new
    @folha_pagamento = FolhaPagamento.new
  end

  # GET /folha_pagamentos/1/edit
  def edit
  end

  # POST /folha_pagamentos or /folha_pagamentos.json
  def create
    @folha_pagamento = FolhaPagamento.new(folha_pagamento_params)

    respond_to do |format|
      if @folha_pagamento.save
        format.html { redirect_to folha_pagamento_url(@folha_pagamento), notice: "Folha pagamento was successfully created." }
        format.json { render :show, status: :created, location: @folha_pagamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @folha_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /folha_pagamentos/1 or /folha_pagamentos/1.json
  def update
    respond_to do |format|
      if @folha_pagamento.update(folha_pagamento_params)
        format.html { redirect_to folha_pagamento_url(@folha_pagamento), notice: "Folha pagamento was successfully updated." }
        format.json { render :show, status: :ok, location: @folha_pagamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @folha_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /folha_pagamentos/1 or /folha_pagamentos/1.json
  def destroy
    @folha_pagamento.destroy!

    respond_to do |format|
      format.html { redirect_to folha_pagamentos_url, notice: "Folha pagamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_folha_pagamento
      @folha_pagamento = FolhaPagamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def folha_pagamento_params
      params.require(:folha_pagamento).permit(:funcionario, :data_pagamento, :salario, :descontos, :bonus, :total_pago)
    end
end
