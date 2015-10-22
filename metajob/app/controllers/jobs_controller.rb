class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.all
    @expensive_jobs = Job.order(:ref_fee)
    @filtered_jobs = Job.where(city: params[:city])
    if current_company
      @my_jobs = Job.where(current_company.id)
    end
  end


  def show
  end

  def new
    if current_company
      @job = Job.new
    else
      redirect_to jobs_path
    end
  end


  def edit
    if !current_company
      redirect_to jobs_path
    end
  end


  def create
    if current_company
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
    else
      redirect_to jobs_path
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
    params.require(:job).permit(:position, :ref_fee, :description, :company_id, :position_filled, :city, :filled_by_refferal, :qualifications)
  end

end
