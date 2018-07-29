class StaticPagesController < ApplicationController
	def portal
		@courses = Course.all
	end
	def myresources
		@entries = current_user.entries
	end
	def favorites
		@entries = current_user.find_up_voted_items

	end
end
