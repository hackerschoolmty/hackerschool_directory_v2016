class ReportController < ApplicationController
  def general
    @hackers_count = Hacker.count
    @hackers = Hacker.all

    @courses_count = Course.count
    @courses = Course.all
  end
end
