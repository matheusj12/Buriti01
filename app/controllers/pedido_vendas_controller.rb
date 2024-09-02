class PedidoVendasController < ApplicationController
  before_action :set_pedido_venda, only: %i[ show edit update destroy ]

  # GET /pedido_vendas or /pedido_vendas.json
  def index
    @pedido_vendas = PedidoVenda.all
  end

  # GET /pedido_vendas/1 or /pedido_vendas/1.json
  def show
  end

  # GET /pedido_vendas/new
  def new
    @pedido_venda = PedidoVenda.new
  end

  # GET /pedido_vendas/1/edit
  def edit
  end

  # POST /pedido_vendas or /pedido_vendas.json
  def create
    @pedido_venda = PedidoVenda.new(pedido_venda_params)

    respond_to do |format|
      if @pedido_venda.save
        format.html { redirect_to pedido_venda_url(@pedido_venda), notice: "Pedido venda was successfully created." }
        format.json { render :show, status: :created, location: @pedido_venda }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pedido_venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_vendas/1 or /pedido_vendas/1.json
  def update
    respond_to do |format|
      if @pedido_venda.update(pedido_venda_params)
        format.html { redirect_to pedido_venda_url(@pedido_venda), notice: "Pedido venda was successfully updated." }
        format.json { render :show, status: :ok, location: @pedido_venda }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pedido_venda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_vendas/1 or /pedido_vendas/1.json
  def destroy
    @pedido_venda.destroy!

    respond_to do |format|
      format.html { redirect_to pedido_vendas_url, notice: "Pedido venda was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_venda
      @pedido_venda = PedidoVenda.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedido_venda_params
      params.require(:pedido_venda).permit(:cliente, :data_pedido, :valor_total, :descricao, :status, :data_entrega)
    end
end
