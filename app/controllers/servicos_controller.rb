class ServicosController < ApplicationController
  def index
    @servicos = Servico.all
  end

  def show
    @servico = Servico.find(params[:id])
  end

  def new
    @servico = Servico.new
  end

  def create
    @servico = Servico.new(servico_params)
    if @servico.save
      redirect_to servico_path(@servico), notice: "Serviço criado com sucesso."
    else
      render :new
    end
  end

  def edit
    @servico = Servico.find(params[:id])
  end

  def update
    @servico = Servico.find(params[:id])
    if @servico.update(servico_params)
      redirect_to servico_path(@servico), notice: "Serviço atualizado com sucesso."
    else
      render :edit
    end
  end

  def destroy
    @servico = Servico.find(params[:id])
    @servico.destroy
    redirect_to servicos_path, notice: "Serviço excluído com sucesso."
  end

  private

  def servico_params
    params.require(:servico).permit(:nome, :descricao, :preco)
  end
end
