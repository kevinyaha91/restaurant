class UsersController < ApplicationController

	def index

	end

	def newuser
		@user = User.new
	end

	def create
		@user = User.new(params.require(:user, :name, :password, :email,))
		if @user.save
			redirect_to users_path
		else
			render 'newuser'

		end
	end




end
