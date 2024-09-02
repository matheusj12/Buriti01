class TesourariaController < ApplicationController
  before_action :set_tesourarium, only: %i[ show edit update destroy ]

  # GET /tesouraria or /tesouraria.json
  def index
    @tesouraria = Tesourarium.all
  end

  # GET /tesouraria/1 or /tesouraria/1.json
  def show
  end

  # GET /tesouraria/new
  def new
    @tesourarium = Tesourarium.new
  end

  # GET /tesouraria/1/edit
  def edit
  end

  # POST /tesouraria or /tesouraria.json
  def create
    @tesourarium = Tesourarium.new(tesourarium_params)

    respond_to do |format|
      if @tesourarium.save
        format.html { redirect_to tesourarium_url(@tesourarium), notice: "Tesourarium was successfully created." }
        format.json { render :show, status: :created, location: @tesourarium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tesourarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tesouraria/1 or /tesouraria/1.json
  def update
    respond_to do |format|
      if @tesourarium.update(tesourarium_params)
        format.html { redirect_to tesourarium_url(@tesourarium), notice: "Tesourarium was successfully updated." }
        format.json { render :show, status: :ok, location: @tesourarium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tesourarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tesouraria/1 or /tesouraria/1.json
  def destroy
    @tesourarium.destroy!

    respond_to do |format|
      format.html { redirect_to tesouraria_url, notice: "Tesourarium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tesourarium
      @tesourarium = Tesourarium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tesourarium_params
      params.require(:tesourarium).permit(:tipo, :data, :valor, :descricao, :categoria, :forma_pagamento)
    end
end
