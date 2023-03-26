class CompaniesController < ApplicationController
  def create
    @company = Company.new(permitted_params)
    if @company.save
      redirect_to @company
    else
      render 'new'
    end
  end

  private

  def permitted_params
    params.require(:company).permit(:name, team_leader_attributes: [:id, :name, engineers_attributes: [:id, :name, :_destroy]])
  end
end
