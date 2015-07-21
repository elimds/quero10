class NatureFinancingsController < ApplicationController
  before_action :set_nature_financing, only: [:show, :edit, :update, :destroy]

  # GET /nature_financings
  # GET /nature_financings.json
  def index
    @nature_financings = NatureFinancing.all
  end

  # GET /nature_financings/1
  # GET /nature_financings/1.json
  def show
  end

  # GET /nature_financings/new
  def new
    @nature_financing = NatureFinancing.new
  end

  # GET /nature_financings/1/edit
  def edit
  end

  # POST /nature_financings
  # POST /nature_financings.json
  def create
    @nature_financing = NatureFinancing.new(nature_financing_params)

    respond_to do |format|
      if @nature_financing.save
        format.html { redirect_to @nature_financing, notice: 'Nature financing was successfully created.' }
        format.json { render :show, status: :created, location: @nature_financing }
      else
        format.html { render :new }
        format.json { render json: @nature_financing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nature_financings/1
  # PATCH/PUT /nature_financings/1.json
  def update
    respond_to do |format|
      if @nature_financing.update(nature_financing_params)
        format.html { redirect_to @nature_financing, notice: 'Nature financing was successfully updated.' }
        format.json { render :show, status: :ok, location: @nature_financing }
      else
        format.html { render :edit }
        format.json { render json: @nature_financing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nature_financings/1
  # DELETE /nature_financings/1.json
  def destroy
    @nature_financing.destroy
    respond_to do |format|
      format.html { redirect_to nature_financings_url, notice: 'Nature financing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nature_financing
      @nature_financing = NatureFinancing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nature_financing_params
      params.require(:nature_financing).permit(:title, :description, :institute_id)
    end
end
