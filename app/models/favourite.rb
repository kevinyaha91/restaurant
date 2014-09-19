class Favourite
  include Mongoid::Document

field :yelp_id, type: String

belongs_to :user
belongs_to :place


end
