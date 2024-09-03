class StockControlsController < ApplicationController
  before_action :set_stock_control, only: %i[show edit update destroy]

  # GET /stock_controls
  # GET /stock_controls.json
  def index
    @stock_controls = StockControl.all
  end

  # GET /stock_controls/1
  # GET /stock_controls/1.json
  def show
  end

  # GET /stock_controls/new
  def new
    @stock_control = StockControl.new
  end

  # GET /stock_controls/1/edit
  def edit
  end

  # POST /stock_controls
  # POST /stock_controls.json
  def create
    @stock_control = StockControl.new(stock_control_params)

    respond_to do |format|
      if @stock_control.save
        format.html { redirect_to @stock_control, notice: 'Stock control was successfully created.' }
        format.json { render :show, status: :created, location: @stock_control }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stock_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_controls/1
  # PATCH/PUT /stock_controls/1.json
  def update
    respond_to do |format|
      if @stock_control.update(stock_control_params)
        format.html { redirect_to @stock_control, notice: 'Stock control was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_control }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stock_control.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_controls/1
  # DELETE /stock_controls/1.json
  def destroy
    @stock_control.destroy
    respond_to do |format|
      format.html { redirect_to stock_controls_url, notice: 'Stock control was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_control
      @stock_control = StockControl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stock_control_params
      params.require(:stock_control).permit(:impressora_id, :quantity, :operation_type)
    end
end
