class LanguagesController < ApplicationController
	#before_action :set_language, only: [:show,:edit]


	def index
		@generation =  Generation.find(params[:generation_id])
		@hacker = @generation.hacker.find(params[:hacker_id])
		@languages = @hacker.languages
	end

	def show
		@generation =  Generation.find(params[:generation_id])
		@hacker = @generation.hacker.find(params[:hacker_id])
		@language = @hacker.languages.find(params[:id])
	end

	def new
		@generation =  Generation.find(params[:generation_id])
		@hacker = @generation.hacker.find(params[:hacker_id])
		@language = @hacker.languages.build
	end

	def create
		@generation =  Generation.find(params[:generation_id])
		@hacker = @generation.hacker.find(params[:hacker_id])
		@language = @hacker.languages.new(language_params)

		if @language.save
			flash[:success] = "Language created successfully!!" 
			redirect_to generation_hackers_languages_path
		else
			render :new
		end
	end

	def edit
		@generation =  Generation.find(params[:generation_id])
		@hacker = @generation.hacker.find(params[:hacker_id])
		@language = @hacker.languages.find(params[:id])
	end

	def update
		@generation =  Generation.find(params[:generation_id])
		@hacker = @generation.hacker.find(params[:hacker_id])
		@language = @hacker.languages.find(params[:id])

		if @language.update(language_params)
			flash[:success] = "Language updated successfully!!" 
			redirect_to generation_hackers_languages_path
		else
			render :edit
		end

	end

	def destroy

		@generation =  Generation.find(params[:generation_id])
		@hacker = @generation.hacker.find(params[:hacker_id])
		@language = @hacker.languages.find(params[:id])

		if @language.destroy
			flash[:success] = "Language DESTROYED" 
			
		else
			flash[:warning] = "Language does not want to be destroyed" 
		end

		redirect_to generation_hackers_languages_path
	end

	private

	def language_params
		params.require(:language).permit(:name)
	end
end
