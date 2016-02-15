class LanguagesController < ApplicationController
	#before_action :set_language, only: [:show,:edit]


	def index
		@languages = Language.all
	end

	def show
		@language = Language.find(params[:id])
	end

	def new
		@language = Language.new
	end

	def create
		@language = Language.new(language_params)

		if @language.save
			flash[:success] = "Language created successfully!!" 
			redirect_to languages_path
		else
			render :new
		end
	end

	def edit
		@language = Language.find(params[:id])
	end

	def update
		@language = Language.find(params[:id])

		if @language.update(language_params)
			flash[:success] = "Language updated successfully!!" 
			redirect_to languages_path
		else
			render :edit
		end

	end

	def destroy
		@language = Language.find(params[:id])

		unless @language.nil?
			@language.destroy
			flash[:success] = "Language DESTROYED" 
			
		else
			flash[:warning] = "Language does not want to be destroyed" 
		end

		redirect_to languages_path
	end

	private

	def language_params
		params.require(:language).permit(:name)
	end
end
