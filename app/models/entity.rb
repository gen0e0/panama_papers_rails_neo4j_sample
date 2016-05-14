class Entity
  include Neo4j::ActiveNode

  id_property :node_id

  property :name
  property :original_name
  property :former_name
  property :jurisdiction
  property :jurisdiction_description
  property :company_type
  property :address
  property :internal_id
  property :incorporation_date
  property :inactivation_date
  property :struck_off_date
  property :dorm_date
  property :status
  property :service_provider
  property :ibcRUC
  property :country_codes
  property :countries
  property :note
  property :valid_until
  property :node_id
  property :sourceID

  validates :node_id, presence: true
end