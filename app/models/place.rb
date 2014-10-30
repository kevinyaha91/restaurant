require 'securerandom'

class Place
  include Mongoid::Document

has_many :favourites
field :yelp_id, type: String
embeds_many :wait_times
embeds_many :userstats
field :wait_time_input, type: String
field :verification, type: String

before_create :verify




def verify
	self.verification = SecureRandom.hex(10)
end

def confirm (code)
	if self.verification == code
		self
	else
		false
	end
end

end