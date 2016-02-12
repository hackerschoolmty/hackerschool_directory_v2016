class LanguagesController < ApplicationController

  def index
    @lenguages = Language.all
  end

  def new 
    @language = Language.new
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      flash[:success] = "¡Lenguaje creado exitosamente!"
      redirect_to languages_path
    else
      render :new
    end
  end

  def edit
    @language = Language.find(params[:id])
  end

  def show
    @language = Language.find(params[:id])
  end

  def update
    @language = Language.find(params[:id])

    if @language.update_attributes(language_params)
      flash[:success] = "¡Lenguaje actualizada exitosamente!"
      redirect_to languages_path
    else
      render :edit
    end
  end

  def destroy
     @language = Language.find(params[:id])

    @language.destroy
    flash[:success] = "¡Lenguaje eliminado exitosamente!"
    redirect_to languages_path
  end

  private

  def language_params
    params.require(:language).permit(:name)
  end
end
