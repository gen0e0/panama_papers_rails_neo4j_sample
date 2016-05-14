class EntitiesController < ApplicationController
  before_action :set_entity, only: [:show]

  # GET /entities
  # GET /entities.json
  def index
    @entities = Entity.page(params[:page])
  end

  # GET /entities/1
  # GET /entities/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entity_params
      params.require(:entity).permit(:name, :original_name, :former_name, :jurisdiction, :jurisdiction_description, :company_type, :address, :internal_id, :incorporation_date, :inactivation_date, :struck_off_date, :dorm_date, :status, :service_provider, :ibcruc, :country_codes, :countries, :note, :valid_until, :node_id, :source_id)
    end
end
