class SubAreasController < ApplicationController
  before_action :set_sub_area, only: [:show, :edit, :update, :destroy]

  # GET /sub_areas
  # GET /sub_areas.json
  def index
    @sub_areas = SubArea.all
  end

  # GET /sub_areas/1
  # GET /sub_areas/1.json
  def show
  end

  # GET /sub_areas/new
  def new
    @sub_area = SubArea.new
  end

  # GET /sub_areas/1/edit
  def edit
  end

  # POST /sub_areas
  # POST /sub_areas.json
  def create
    @sub_area = SubArea.new(sub_area_params)

    respond_to do |format|
      if @sub_area.save
        format.html { redirect_to @sub_area, notice: 'Sub area was successfully created.' }
        format.json { render :show, status: :created, location: @sub_area }
      else
        format.html { render :new }
        format.json { render json: @sub_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_areas/1
  # PATCH/PUT /sub_areas/1.json
  def update
    respond_to do |format|
      if @sub_area.update(sub_area_params)
        format.html { redirect_to @sub_area, notice: 'Sub area was successfully updated.' }
        format.json { render :show, status: :ok, location: @sub_area }
      else
        format.html { render :edit }
        format.json { render json: @sub_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_areas/1
  # DELETE /sub_areas/1.json
  def destroy
    @sub_area.destroy
    respond_to do |format|
      format.html { redirect_to sub_areas_url, notice: 'Sub area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_area
      @sub_area = SubArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sub_area_params
      params.require(:sub_area).permit(:title, :description, :area_id)
    end
end
