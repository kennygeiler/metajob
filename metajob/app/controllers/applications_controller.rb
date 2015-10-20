class ApplicationsController < ApplicationController

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    @users = User.all
    @users.each do |user|
      if @application.ref_code == user.ref_code
        @application.reffering_user = user.id
      end
    end
    respond_to do |format|
      if @application.save
        format.html { redirect_to jobs_path, notice: 'Application was successfully created.' }
        format.json { render :show, status: :created, location: @application }
      else
        format.html { render :new }
        format.json { render json: @application.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application
      @application = Application.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_params
       params.require(:application).permit(:full_name, :email, :github_link, :linkedin_link, :resume, :ref_code, :job_id, :reffering_user)
    end
end
