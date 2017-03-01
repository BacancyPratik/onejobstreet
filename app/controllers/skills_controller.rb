class SkillsController < ApplicationController
  def new
    @skill=Skill.new
  end
  def create
    @skill=Skill.create(skill_params)
  end
  private
  def skill_params
    params.require(:skill).permit(:name)
  end
end
