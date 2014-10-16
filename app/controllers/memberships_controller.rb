class MembershipsController < ApplicationController
 
  def create
    membership = Membership.new(membership_params)
    membership.cohort_id = params[:id]
    membership.save
    redirect_to "/cohorts/#{membership.cohort_id}"
  end

  def destroy
    @membership = Membership.find_by(user_id: params[:id])
    @cohort_id = @membership.cohort_id
    @membership.destroy
    redirect_to "/cohorts/#{@cohort_id}"
  end

  private
  def membership_params
    params.require(:membership).permit(:name, :user_id, :role)
  end

end
