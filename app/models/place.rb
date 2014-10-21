class Place
  include Mongoid::Document

has_many :favourites
field :yelp_id, type: String
embeds_many :wait_times

#put stuff in the model only if you want it to be saved in the data base.
end

