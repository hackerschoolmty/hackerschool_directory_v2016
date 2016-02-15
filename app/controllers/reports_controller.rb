class ReportsController < ApplicationController

	def general
		@generations = Generation.all
	end
end
