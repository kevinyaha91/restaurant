require 'securerandom'

class Place
  include Mongoid::Document

has_many :favourites
field :yelp_id, type: String
embeds_many :wait_times
embeds_many :userstats
field :wait_time_input, type: String
field :verification, type: String




def verify
	self.verification = Securerandom.hex(10)
end

def confirm (code)
	if self.verification == code
		self
	else
		false
	end
end

end