class FinancialInstitutionsController < ApplicationController
  before_action :require_user
  before_action :set_financial_institution, only: [:show, :edit, :update, :destroy]

  # GET /financial_institutions
  # GET /financial_institutions.json
  def index
    @financial_institutions = FinancialInstitution.where(institute_id: current_institute.id)
  end

  # GET /financial_institutions/1
  # GET /financial_institutions/1.json
  def show
  end

  # GET /financial_institutions/new
  def new
    @financial_institution = FinancialInstitution.new
  end

  # GET /financial_institutions/1/edit
  def edit
  end

  # POST /financial_institutions
  # POST /financial_institutions.json
  def create
    @financial_institution = FinancialInstitution.new(financial_institution_params)
    @financial_institution.institute = current_institute
    
    respond_to do |format|
      if @financial_institution.save
        format.html { redirect_to @financial_institution, notice: 'Financial institution was successfully created.' }
        format.json { render :show, status: :created, location: @financial_institution }
      else
        format.html { render :new }
        format.json { render json: @financial_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /financial_institutions/1
  # PATCH/PUT /financial_institutions/1.json
  def update
    respond_to do |format|
      if @financial_institution.update(financial_institution_params)
        format.html { redirect_to @financial_institution, notice: 'Financial institution was successfully updated.' }
        format.json { render :show, status: :ok, location: @financial_institution }
      else
        format.html { render :edit }
        format.json { render json: @financial_institution.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_institutions/1
  # DELETE /financial_institutions/1.json
  def destroy
    @financial_institution.destroy
    respond_to do |format|
      format.html { redirect_to financial_institutions_url, notice: 'Financial institution was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_financial_institution
      begin
        @financial_institution = current_institute.financial_institutions.find(params[:id])
        rescue ActiveRecord::RecordNotFound
          redirect_to financial_institutions_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def financial_institution_params
      params.require(:financial_institution).permit(:name, :address, :number, :district, :city, :state_id, :zip_code, :person_id)
    end
end
