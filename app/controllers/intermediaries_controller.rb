class IntermediariesController < ApplicationController
  before_action :set_intermediary, only: [:show]

  # GET /intermediaries
  # GET /intermediaries.json
  def index
    @intermediaries = Intermediary.page(params[:page])
  end

  # GET /intermediaries/1
  # GET /intermediaries/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intermediary
      @intermediary = Intermediary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intermediary_params
      params.require(:intermediary).permit(:name, :internal_id, :address, :valid_until, :country_codes, :countries, :status, :node_id, :sourceid)
    end
end
