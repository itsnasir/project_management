class ProjectsController <  ApplicationController
  
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  	
  def new
  	@project = Project.new
  	@project.build_project_billing_detail
  end

  def create
    @project = Project.new(project_params)
    
    respond_to do |format|
      if @project.save
        format.html { redirect_to projects_path, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new}
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
        
  end


  def index 
    @projects = current_user.projects
    @projects = @projects.where("LOWER(name) LIKE ?", "%#{params[:keyword].to_s.downcase}%") unless params[:keyword].blank?    
    @projects = @projects.paginate(:per_page => per_page, :page => page)
  end

  def update
    respond_to do |format|
      if @project.update(admin_user_params)
        format.html { redirect_to :back, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  
  private

  def set_project
    @project = Project.find(params[:id]) 
  end

  def per_page
    params[:per_page] ||= 30
  end

  def page
    params[:page] ||= 1
  end

  def project_params
    params.require(:project).permit(:client_name,:description, :technology, :name,:start_date,:end_date , project_billing_detail_attributes: [:id, :project_id,:billing_method,:hourly_rate, :flat_rate, :_destroy])
  end

end



