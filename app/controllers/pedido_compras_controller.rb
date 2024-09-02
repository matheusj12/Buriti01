class PedidoComprasController < ApplicationController
  before_action :set_pedido_compra, only: %i[ show edit update destroy ]

  # GET /pedido_compras or /pedido_compras.json
  def index
    @pedido_compras = PedidoCompra.all
  end

  # GET /pedido_compras/1 or /pedido_compras/1.json
  def show
  end

  # GET /pedido_compras/new
  def new
    @pedido_compra = PedidoCompra.new
  end

  # GET /pedido_compras/1/edit
  def edit
  end

  # POST /pedido_compras or /pedido_compras.json
  def create
    @pedido_compra = PedidoCompra.new(pedido_compra_params)

    respond_to do |format|
      if @pedido_compra.save
        format.html { redirect_to pedido_compra_url(@pedido_compra), notice: "Pedido compra was successfully created." }
        format.json { render :show, status: :created, location: @pedido_compra }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pedido_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pedido_compras/1 or /pedido_compras/1.json
  def update
    respond_to do |format|
      if @pedido_compra.update(pedido_compra_params)
        format.html { redirect_to pedido_compra_url(@pedido_compra), notice: "Pedido compra was successfully updated." }
        format.json { render :show, status: :ok, location: @pedido_compra }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pedido_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pedido_compras/1 or /pedido_compras/1.json
  def destroy
    @pedido_compra.destroy!

    respond_to do |format|
      format.html { redirect_to pedido_compras_url, notice: "Pedido compra was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido_compra
      @pedido_compra = PedidoCompra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedido_compra_params
      params.require(:pedido_compra).permit(:fornecedor, :data_pedido, :valor_total, :descricao, :status, :data_entrega)
    end
end
