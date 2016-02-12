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
    @course = @generation.courses.new
  end

  def edit
    @generation = Generation.find(params[:generation_id])
    @course = @generation.courses.find(params[:id])
  end

  def create
    @generation = Generation.find(params[:generation_id])
    @course = @generation.courses.create(course_attributes)
    if @course.save
      flash[:success] = "¡Curso creado exitosamente!"
      redirect_to generation_courses_path(@generation)
    else
      render :new
    end
  end

  def update
    @generation = Generation.find(params[:generation_id])
    @course = @generation.courses.find(params[:id])
    if @course.update_attributes(course_attributes)
      flash[:success] = "¡Curso actualizado exitosamente!"
      redirect_to generation_courses_path(@generation)
    else
      render :edit
    end
  end

  def destroy
    @generation = Generation.find(params[:generation_id])
    @course = @generation.courses.find(params[:id])
    @course.destroy

    flash[:success] = "¡Curso eliminado exitosamente!"
    redirect_to generation_courses_path(@generation)
  end


  private

  def course_attributes
    params.required(:course).permit(:name)
  end
end
