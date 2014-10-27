class SessionsController < ApplicationController

	def new
		flash.clear
	end

	def create
		flash.clear
		begin 
=begin the first email variable tells the computer to look at the list of informations that are stored
within the variable name of email. then the computer will then see if there is any match
by looking into the email just inputed within the log session.
=end 
			user = User.find_by({email: params[:session][:email]})
		rescue
			flash[:error] = 'Username or password incorrect'
		end

		if user && user.authenticate(params[:session][:password])
			log_in(user)
			redirect_to home_path
		else
			flash[:error] ||= 'Try again'
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to sessions_path
	end
	


end
