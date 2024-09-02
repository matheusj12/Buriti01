class OrdemPagamentosController < ApplicationController
  before_action :set_ordem_pagamento, only: %i[ show edit update destroy ]

  # GET /ordem_pagamentos or /ordem_pagamentos.json
  def index
    @ordem_pagamentos = OrdemPagamento.all
  end

  # GET /ordem_pagamentos/1 or /ordem_pagamentos/1.json
  def show
  end

  # GET /ordem_pagamentos/new
  def new
    @ordem_pagamento = OrdemPagamento.new
  end

  # GET /ordem_pagamentos/1/edit
  def edit
  end

  # POST /ordem_pagamentos or /ordem_pagamentos.json
  def create
    @ordem_pagamento = OrdemPagamento.new(ordem_pagamento_params)

    respond_to do |format|
      if @ordem_pagamento.save
        format.html { redirect_to ordem_pagamento_url(@ordem_pagamento), notice: "Ordem pagamento was successfully created." }
        format.json { render :show, status: :created, location: @ordem_pagamento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ordem_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordem_pagamentos/1 or /ordem_pagamentos/1.json
  def update
    respond_to do |format|
      if @ordem_pagamento.update(ordem_pagamento_params)
        format.html { redirect_to ordem_pagamento_url(@ordem_pagamento), notice: "Ordem pagamento was successfully updated." }
        format.json { render :show, status: :ok, location: @ordem_pagamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ordem_pagamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordem_pagamentos/1 or /ordem_pagamentos/1.json
  def destroy
    @ordem_pagamento.destroy!

    respond_to do |format|
      format.html { redirect_to ordem_pagamentos_url, notice: "Ordem pagamento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem_pagamento
      @ordem_pagamento = OrdemPagamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ordem_pagamento_params
      params.require(:ordem_pagamento).permit(:fornecedor, :data_emissao, :valor, :descricao, :data_pagamento, :status)
    end
end
