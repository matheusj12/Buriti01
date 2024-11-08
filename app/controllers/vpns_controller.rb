class VpnsController < ApplicationController
  before_action :set_vpn, only: %i[ show edit update destroy ]

  # GET /vpns or /vpns.json
  def index
    @vpns = Vpn.all
  end

  # GET /vpns/1 or /vpns/1.json
  def show
  end

  # GET /vpns/new
  def new
    @vpn = Vpn.new
  end

  # GET /vpns/1/edit
  def edit
  end

  # POST /vpns or /vpns.json
  def create
    @vpn = Vpn.new(vpn_params)

    respond_to do |format|
      if @vpn.save
        format.html { redirect_to vpn_url(@vpn), notice: "Vpn was successfully created." }
        format.json { render :show, status: :created, location: @vpn }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vpn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vpns/1 or /vpns/1.json
  def update
    respond_to do |format|
      if @vpn.update(vpn_params)
        format.html { redirect_to vpn_url(@vpn), notice: "Vpn was successfully updated." }
        format.json { render :show, status: :ok, location: @vpn }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vpn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vpns/1 or /vpns/1.json
  def destroy
    @vpn.destroy!

    respond_to do |format|
      format.html { redirect_to vpns_url, notice: "Vpn was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vpn
      @vpn = Vpn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vpn_params
      params.require(:vpn).permit(:local, :nomedaconexao, :gatewayremoto, :chave)
    end
end
