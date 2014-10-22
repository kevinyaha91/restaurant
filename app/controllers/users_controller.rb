class UsersController < ApplicationController


	def newuser
		@user = User.new
	end

	def create
	
	@user = User.new(params.require(:user).permit(:name, :email, :password, :business_owner))
		if @user.save
			redirect_to sessions_path
		else
			render 'newuser'
		end
	end

end
