class VendasController < ApplicationController
  before_action :set_venda, only: [:show, :edit, :update, :destroy]

  def index
    @vendas = Venda.all
  end

  def show
  end

  def new
    @venda = Venda.new
  end

  def create
    @venda = Venda.new(venda_params)

    if @venda.save
      redirect_to @venda, notice: 'Venda criada com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @venda.update(venda_params)
      redirect_to @venda, notice: 'Venda atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @venda.destroy
    redirect_to vendas_url, notice: 'Venda excluída com sucesso.'
  end

  private

  def set_venda
    @venda = Venda.find(params[:id])
  end

  def venda_params
    params.require(:venda).permit(:product_id,:client_id, :produto, :quantidade, :data)
  end
end
