class AutomacaoTarefasController < ApplicationController
  before_action :set_automacao_tarefa, only: %i[ show edit update destroy ]

  # GET /automacao_tarefas or /automacao_tarefas.json
  def index
    @automacao_tarefas = AutomacaoTarefa.all
  end

  # GET /automacao_tarefas/1 or /automacao_tarefas/1.json
  def show
  end

  # GET /automacao_tarefas/new
  def new
    @automacao_tarefa = AutomacaoTarefa.new
  end

  # GET /automacao_tarefas/1/edit
  def edit
  end

  # POST /automacao_tarefas or /automacao_tarefas.json
  def create
    @automacao_tarefa = AutomacaoTarefa.new(automacao_tarefa_params)

    respond_to do |format|
      if @automacao_tarefa.save
        format.html { redirect_to automacao_tarefa_url(@automacao_tarefa), notice: "Automacao tarefa was successfully created." }
        format.json { render :show, status: :created, location: @automacao_tarefa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @automacao_tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automacao_tarefas/1 or /automacao_tarefas/1.json
  def update
    respond_to do |format|
      if @automacao_tarefa.update(automacao_tarefa_params)
        format.html { redirect_to automacao_tarefa_url(@automacao_tarefa), notice: "Automacao tarefa was successfully updated." }
        format.json { render :show, status: :ok, location: @automacao_tarefa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @automacao_tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automacao_tarefas/1 or /automacao_tarefas/1.json
  def destroy
    @automacao_tarefa.destroy!

    respond_to do |format|
      format.html { redirect_to automacao_tarefas_url, notice: "Automacao tarefa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automacao_tarefa
      @automacao_tarefa = AutomacaoTarefa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def automacao_tarefa_params
      params.require(:automacao_tarefa).permit(:nome, :descricao, :horario, :frequencia, :ativo)
    end
end
