class PagesController < ApplicationController
  def top
  end

  def case1
    @company = Company.new
    @company.team_leaders.build
  end

  def case2
    @company = Company.new
    @company.team_leaders.build
    @company.team_leaders.each do |tl|
      tl.engineers.build
    end
  end

  def case3
    @company = Company.create(name: '企業')
    @engineer = Engineer.new
    @project = Project.create(name: 'プロジェクト', company_id: @company.id)
    @engineer.engineer_project_relations.build
  end

end
