class ProfilesController < ApplicationController
	def index
		@profiles =  current_student
		
	end
end