class JobsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.order(created_at: :desc)
  end

  def show
  end

  def new
    @job = current_user.jobs.new
  end

  def create
    @job = current_user.jobs.new(job_params)
    if @job.save
      redirect_to job_path(@job, locale: I18n.locale), notice: 'Job was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @job.update(job_params)
      redirect_to job_path(@job, locale: I18n.locale), notice: 'Job was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to jobs_url(locale: I18n.locale), notice: 'Job was successfully destroyed.'
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:name, :description, :salary, :location)
  end
end
