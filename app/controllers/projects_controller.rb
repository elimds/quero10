class ProjectsController < ApplicationController
  before_action :require_user
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/add/1
  def add
    set_project
    @project_participant = ProjectParticipant.new
    @roles = ProjectParticipant.roles
  end

  # POST /projects/1/addparticipator
  def add_participator
    set_project
    @project_participant = ProjectParticipant.new(participant_params)
    respond_to do |format|
      if @project_participant.save
        format.html { redirect_to add_path, notice: 'Participante adicionado com sucesso.' }
        format.json { render :add, status: :added, location: add_path}
      else
        format.html { render :add }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1/remove_participator
  def remove_participator
    set_project
    @project_participant = ProjectParticipant.find(params[:id_participant])
    @project_participant.destroy
    redirect_to add_path(@project), notice: 'Participante removido com sucesso.'
  end
  
  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    def set_participant
      @project_participant = ProjectParticipant.find(params[:id_participant])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:title, :department_id, :date_start, :date_end, :keywords, :email, :category_id, :great_area_id, :area_id, :sub_area_id, :speciality_id, :research_group_id, :short_description, :introduction, :gols, :methodology, :references, :financial_institution_id, :nature_financing_id, :date_start_financing, :date_end_financing, :description_estimate, :value_estimate)
    end
    
    def participant_params
      params.require(:project_participant).permit(:project_id, :person_id, :role, :weekly_time)
    end
end
