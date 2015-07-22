class GreatAreasController < ApplicationController
  before_action :require_user
  before_action :set_great_area, only: [:show, :edit, :update, :destroy]

  # GET /great_areas
  # GET /great_areas.json
  def index
    @great_areas = GreatArea.all
  end

  # GET /great_areas/1
  # GET /great_areas/1.json
  def show
  end

  # GET /great_areas/new
  def new
    @great_area = GreatArea.new
  end

  # GET /great_areas/1/edit
  def edit
  end

  # POST /great_areas
  # POST /great_areas.json
  def create
    @great_area = GreatArea.new(great_area_params)

    respond_to do |format|
      if @great_area.save
        format.html { redirect_to @great_area, notice: 'Great area was successfully created.' }
        format.json { render :show, status: :created, location: @great_area }
      else
        format.html { render :new }
        format.json { render json: @great_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /great_areas/1
  # PATCH/PUT /great_areas/1.json
  def update
    respond_to do |format|
      if @great_area.update(great_area_params)
        format.html { redirect_to @great_area, notice: 'Great area was successfully updated.' }
        format.json { render :show, status: :ok, location: @great_area }
      else
        format.html { render :edit }
        format.json { render json: @great_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /great_areas/1
  # DELETE /great_areas/1.json
  def destroy
    @great_area.destroy
    respond_to do |format|
      format.html { redirect_to great_areas_url, notice: 'Great area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_great_area
      @great_area = GreatArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def great_area_params
      params.require(:great_area).permit(:code_capes, :title, :description)
    end
end
