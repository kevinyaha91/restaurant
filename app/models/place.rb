class Place
  include Mongoid::Document

has_many :favourites

#put stuff in the model only if you want it to be saved in the data base.
end
