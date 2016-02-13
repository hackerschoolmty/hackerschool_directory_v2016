class GenerationsController < ApplicationController

  def index
    @generations = Generation.all
  end

  def new
    @generation = Generation.new
  end

  def create
    @generation = Generation.new(generation_params)
    if @generation.save
      flash[:success] = "¡Generación creada exitosamente!"
      redirect_to generations_path
    else
      render :new
    end
    
  end

  def edit
    @generation = Generation.find(params[:id])
  end

  def show
    @generation = Generation.find(params[:id])
  end

  def update
    @generation = Generation.find(params[:id])

    if @generation.update_attributes(generation_params)
      flash[:success] = "¡Generación actualizada exitosamente!"
      redirect_to generations_path
    else
      render :edit
    end
    
  end

  def destroy
    @generation = Generation.find(params[:id])

    @generation.destroy
    flash[:success] = "¡Generación elimininada exitosamente!"
    redirect_to generations_path
  end

  def activate
    @generation = Generation.find(params[:id])
    @generation.update_attribute(:status, "active")
    flash[:success] = "¡Generación activada exitosamente!"
    redirect_to generations_path
  end

  def deactivate
    @generation = Generation.find(params[:id])
    @generation.update_attribute(:status, "inactive")
    flash[:success] = "¡Generación desactivada exitosamente!"
    redirect_to generations_path
  end

  def activate_all
    Generation.update_all({status: "active"})
    flash[:success] = "¡Generaciones activadas exitosamente!"
    redirect_to generations_path
  end

  private

  def generation_params
    params.require(:generation).permit(:name, :start_date)
  end
end
