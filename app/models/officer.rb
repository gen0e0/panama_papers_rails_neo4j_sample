class Officer
  include Neo4j::ActiveNode

  id_property :node_id

  property :name
  property :icij_id
  property :valid_until
  property :country_codes
  property :countries
  property :node_id
  property :sourceID

  validates :node_id, presence: true
end
