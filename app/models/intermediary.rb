class Intermediary
  include Neo4j::ActiveNode

  id_property :node_id

  property :name
  property :internal_id
  property :address
  property :valid_until
  property :country_codes
  property :countries
  property :status
  property :node_id
  property :sourceID

  validates :node_id, presence: true
end
