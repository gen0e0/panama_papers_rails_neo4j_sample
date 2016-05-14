class OfficersController < ApplicationController
  before_action :set_officer, only: [:show]

  # GET /officers
  # GET /officers.json
  def index
    @officers = Officer.page(params[:page])
  end

  # GET /officers/1
  # GET /officers/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_officer
      @officer = Officer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def officer_params
      params.require(:officer).permit(:name, :icij_id, :valid_until, :country_codes, :countries, :node_id, :sourceid)
    end
end
