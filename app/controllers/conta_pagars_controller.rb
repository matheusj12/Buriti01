class ContaPagarsController < ApplicationController
  before_action :set_conta_pagar, only: %i[ show edit update destroy ]

  # GET /conta_pagars or /conta_pagars.json
  def index
    @conta_pagars = ContaPagar.all
  end

  # GET /conta_pagars/1 or /conta_pagars/1.json
  def show
  end

  # GET /conta_pagars/new
  def new
    @conta_pagar = ContaPagar.new
  end

  # GET /conta_pagars/1/edit
  def edit
  end

  # POST /conta_pagars or /conta_pagars.json
  def create
    @conta_pagar = ContaPagar.new(conta_pagar_params)

    respond_to do |format|
      if @conta_pagar.save
        format.html { redirect_to conta_pagar_url(@conta_pagar), notice: "Conta pagar was successfully created." }
        format.json { render :show, status: :created, location: @conta_pagar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conta_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conta_pagars/1 or /conta_pagars/1.json
  def update
    respond_to do |format|
      if @conta_pagar.update(conta_pagar_params)
        format.html { redirect_to conta_pagar_url(@conta_pagar), notice: "Conta pagar was successfully updated." }
        format.json { render :show, status: :ok, location: @conta_pagar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conta_pagar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conta_pagars/1 or /conta_pagars/1.json
  def destroy
    @conta_pagar.destroy!

    respond_to do |format|
      format.html { redirect_to conta_pagars_url, notice: "Conta pagar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta_pagar
      @conta_pagar = ContaPagar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conta_pagar_params
      params.require(:conta_pagar).permit(:fornecedor, :data_vencimento, :valor, :descricao, :status, :data_pagamento)
    end
end
