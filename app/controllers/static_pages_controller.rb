class StaticPagesController < ApplicationController
	def portal
		@courses = Course.all
	end
	def myresources
		@entries = current_user.entries
	end
end
