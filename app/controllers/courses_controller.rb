class CoursesController < ApplicationController

	def index
		@generation = Generation.find(params[:generation_id])
		@courses = @generation.courses
	end

	def show
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.find(params[:id])
	end

	def new
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.build
	end

	def create
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.new(course_params)

		if @course.save
			redirect_to generation_courses_path(@generation), notice: 'Course was successfully created.'
		else
			render :new
		end

	end

	def edit
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.find(params[:id])
	end

	def update
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.find(params[:id])

		if @course.update(course_params)
			redirect_to generation_courses_path(@generation), notice: 'Course was successfully updated.'
		else
			render :edit
		end

	end

	def destroy
		@generation = Generation.find(params[:generation_id])
		@course = @generation.courses.find(params[:id])

		if @course.destroy
			redirect_to generation_courses_path(@generation), notice: 'Course was successfully DESTROYED.'
		else
			redirect_to generation_courses_path(@generation), notice: 'Course was not destroyed.'
		end

	end

	private

	def course_params
		params.require(:course).permit(:name,:generation_id)
	end

end
