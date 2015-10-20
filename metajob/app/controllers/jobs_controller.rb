class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.all
    if current_company
      @my_jobs = Job.find_by(current_company.id)
    end
  end


  def show
  end

  def new
    @job = Job.new
  end


  def edit
  end


  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_job
    @job = Job.find(params[:id])
  end


  def job_params
    params.require(:job).permit(:position, :ref_fee, :description, :company_id)
  end

end
