class TestesController < ApplicationController
  before_action :set_testis, only: [:show, :edit, :update, :destroy]

  # GET /testes
  # GET /testes.json
  def index
    @testes = Teste.all
  end

  # GET /testes/1
  # GET /testes/1.json
  def show
  end

  # GET /testes/new
  def new
    @testis = Teste.new
  end

  # GET /testes/1/edit
  def edit
  end

  # POST /testes
  # POST /testes.json
  def create
    @testis = Teste.new(testis_params)

    respond_to do |format|
      if @testis.save
        format.html { redirect_to @testis, notice: 'Teste was successfully created.' }
        format.json { render :show, status: :created, location: @testis }
      else
        format.html { render :new }
        format.json { render json: @testis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testes/1
  # PATCH/PUT /testes/1.json
  def update
    respond_to do |format|
      if @testis.update(testis_params)
        format.html { redirect_to @testis, notice: 'Teste was successfully updated.' }
        format.json { render :show, status: :ok, location: @testis }
      else
        format.html { render :edit }
        format.json { render json: @testis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testes/1
  # DELETE /testes/1.json
  def destroy
    @testis.destroy
    respond_to do |format|
      format.html { redirect_to testes_url, notice: 'Teste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testis
      @testis = Teste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testis_params
      params.require(:testis).permit(:codigo, :nome)
    end
end
