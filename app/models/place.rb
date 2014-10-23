class Place
  include Mongoid::Document

has_many :favourites
field :yelp_id, type: String
embeds_one :wait_time
embeds_many :userstats
field :wait_time_input, type: String

#put stuff in the model only if you want it to be saved in the data base.
end

