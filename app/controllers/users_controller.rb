class UsersController < ApplicationController


	def newuser
		@user = User.new
	end

	def create
	@user = User.new(params.require(:user).permit(:name, :email, :password))
		if @user.save
			redirect_to users_path
		else
			render 'newuser'
		end
	end
end
