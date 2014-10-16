class CohortsController < ApplicationController

  def index
    @cohorts = Cohort.all
  end

  def create
    @cohort = Cohort.new(cohort_params)
    @cohort.save
    redirect_to "/cohorts"
  end

  def show
    @cohort = Cohort.find(params[:id])
    @members = @cohort.users
    @users = User.all
  end

  def update
  end

  private
  def cohort_params
    params.require(:cohort).permit(:name)
  end

end
