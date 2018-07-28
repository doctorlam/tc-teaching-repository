class StaticPagesController < ApplicationController
	def portal
		@courses = Course.all
	end
end
