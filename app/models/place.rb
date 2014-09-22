class Place
  include Mongoid::Document

has_many :favourites
field :wait_time_input, type: String
field :yelp_id, type: String

#put stuff in the model only if you want it to be saved in the data base.
end

