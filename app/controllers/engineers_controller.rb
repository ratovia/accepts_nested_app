class EngineersController < ApplicationController

  def create
    @engineer = Engineer.new(engineer_params)

    if @engineer.save
      redirect_to @engineer, notice: "エンジニアを作成しました。"
    else
      raise Error.new('エラー')
    end
  end

  private

  def engineer_params
    params.require(:engineer).permit(:name, engineer_project_relations_attributes: [:id, :project_id])
  end
end
