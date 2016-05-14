class AddressesController < ApplicationController
  before_action :set_address, only: [:show]

  # GET /addresses
  # GET /addresses.json
  def index
    @addresses = Address.page(params[:page])
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:address, :icij_id, :valid_until, :country_codes, :countries, :node_id, :sourceid)
    end
end
