require 'bcrypt'

# p.userstats.where(:seconds_since_midnight.gt => 301).avg(:user_wait_input)
# place.wait_times.where(day: Time.now.wday,:seconds_since_midnight.lt => 99999 ).exists?


class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String
  field :business_owner, type: Boolean

 

attr_reader :password

def password=(new_password)
	self.password_digest = BCrypt::Password.create(new_password)
end

def authenticate (test_password)
	if test_password && BCrypt::Password.new(self.password_digest) == test_password
		self
	else
		false
	end
end

has_many :favourites

validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

end


