class ConsultaEstoquesController < ApplicationController
  before_action :set_consulta_estoque, only: %i[ show edit update destroy ]

  # GET /consulta_estoques or /consulta_estoques.json
  def index
    @consulta_estoques = ConsultaEstoque.all
  end

  # GET /consulta_estoques/1 or /consulta_estoques/1.json
  def show
  end

  # GET /consulta_estoques/new
  def new
    @consulta_estoque = ConsultaEstoque.new
  end

  # GET /consulta_estoques/1/edit
  def edit
  end

  # POST /consulta_estoques or /consulta_estoques.json
  def create
    @consulta_estoque = ConsultaEstoque.new(consulta_estoque_params)

    respond_to do |format|
      if @consulta_estoque.save
        format.html { redirect_to consulta_estoque_url(@consulta_estoque), notice: "Consulta estoque was successfully created." }
        format.json { render :show, status: :created, location: @consulta_estoque }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consulta_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta_estoques/1 or /consulta_estoques/1.json
  def update
    respond_to do |format|
      if @consulta_estoque.update(consulta_estoque_params)
        format.html { redirect_to consulta_estoque_url(@consulta_estoque), notice: "Consulta estoque was successfully updated." }
        format.json { render :show, status: :ok, location: @consulta_estoque }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consulta_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta_estoques/1 or /consulta_estoques/1.json
  def destroy
    @consulta_estoque.destroy!

    respond_to do |format|
      format.html { redirect_to consulta_estoques_url, notice: "Consulta estoque was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulta_estoque
      @consulta_estoque = ConsultaEstoque.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consulta_estoque_params
      params.require(:consulta_estoque).permit(:produto, :quantidade, :localizacao, :data_entrada, :data_saida, :valor_unitario)
    end
end
