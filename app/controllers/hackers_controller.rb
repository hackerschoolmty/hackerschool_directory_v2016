class HackersController < ApplicationController


  # GET /hackers
  # GET /hackers.json
  def index
    @generation = Generation.find(params[:generation_id])
    @hackers = @generation.hackers
  end

  # GET /hackers/1
  # GET /hackers/1.json
  def show
    @generation = Generation.find(params[:generation_id])
    @hacker = @generation.hackers.find(params[:id])
  end

  # GET /hackers/new
  def new
    @generation = Generation.find(params[:generation_id])
    @hacker = @generation.hackers.new
  end

  # GET /hackers/1/edit
  def edit
    @generation = Generation.find(params[:generation_id])
    @hacker = @generation.hackers.find(params[:id])
  end

  # POST /hackers
  # POST /hackers.json
  def create
    @generation = Generation.find(params[:generation_id])
    @hacker = @generation.hackers.new(hacker_params)

    respond_to do |format|
      if @hacker.save
        format.html { redirect_to generation_hackers_path(@generation), notice: 'Hacker was successfully created.' }
        format.json { render :show, status: :created, location: @hacker }
      else
        format.html { render :new }
        format.json { render json: @hacker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hackers/1
  # PATCH/PUT /hackers/1.json
  def update
    @generation = Generation.find(params[:generation_id])
    @hacker = @generation.hackers.find(params[:id])
    respond_to do |format|
      if @hacker.update(hacker_params)
        format.html { redirect_to generation_hackers_path(@generation), notice: 'Hacker was successfully updated.' }
        format.json { render :show, status: :ok, location: @hacker }
      else
        format.html { render :edit }
        format.json { render json: @hacker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hackers/1
  # DELETE /hackers/1.json
  def destroy
    @generation = Generation.find(params[:generation_id])
    @hacker = @generation.hackers.find(params[:id])
    @hacker.destroy
    respond_to do |format|
      format.html { redirect_to generation_hackers_url(@generation), notice: 'Hacker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def hacker_params
      params.require(:hacker).permit(:name, :email, :generation_id, language_ids: [])
    end
end
