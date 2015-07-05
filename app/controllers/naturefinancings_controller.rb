class NaturefinancingsController < ApplicationController
  before_action :set_naturefinancing, only: [:show, :edit, :update, :destroy]

  # GET /naturefinancings
  # GET /naturefinancings.json
  def index
    @naturefinancings = Naturefinancing.all
  end

  # GET /naturefinancings/1
  # GET /naturefinancings/1.json
  def show
  end

  # GET /naturefinancings/new
  def new
    @naturefinancing = Naturefinancing.new
  end

  # GET /naturefinancings/1/edit
  def edit
  end

  # POST /naturefinancings
  # POST /naturefinancings.json
  def create
    @naturefinancing = Naturefinancing.new(naturefinancing_params)

    respond_to do |format|
      if @naturefinancing.save
        format.html { redirect_to @naturefinancing, notice: 'Naturefinancing was successfully created.' }
        format.json { render :show, status: :created, location: @naturefinancing }
      else
        format.html { render :new }
        format.json { render json: @naturefinancing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /naturefinancings/1
  # PATCH/PUT /naturefinancings/1.json
  def update
    respond_to do |format|
      if @naturefinancing.update(naturefinancing_params)
        format.html { redirect_to @naturefinancing, notice: 'Naturefinancing was successfully updated.' }
        format.json { render :show, status: :ok, location: @naturefinancing }
      else
        format.html { render :edit }
        format.json { render json: @naturefinancing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /naturefinancings/1
  # DELETE /naturefinancings/1.json
  def destroy
    @naturefinancing.destroy
    respond_to do |format|
      format.html { redirect_to naturefinancings_url, notice: 'Naturefinancing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_naturefinancing
      @naturefinancing = Naturefinancing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def naturefinancing_params
      params.require(:naturefinancing).permit(:codigo, :descricao)
    end
end
