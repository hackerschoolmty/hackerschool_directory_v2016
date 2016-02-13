class ReportsController < ApplicationController
  def general
    @generations = Generation.includes(:hackers, :courses)
  end
end
