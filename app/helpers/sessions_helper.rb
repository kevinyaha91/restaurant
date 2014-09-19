module SessionsHelper

# This step Ensure current_user returns a User object from MongoDB
#-----------------------------------------
# If not already set, retrieve user from MongoDB
def current_user
		if logged_in?
			@current_user ||= User.find(cookies[:logged_in_id])
		else
			nil
		end
	end

	# current_user Setter (similar to attr_writer)
	def current_user=(user)
		@current_user = user
	end
#-----------------------------------------


def log_in(user)
	cookies.permanent[:logged_in_id] = user.id
	@current_user = user
end

def log_out
	cookies.delete(:logged_in_id)
end

def logged_in?
	cookies[:logged_in_id] ? true : false 
end



end
