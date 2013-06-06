class SkillsController < ApplicationController
  
  def new
    @title = "Skills"
    @skill = Skill.new
  end
  
  def create
    @skill = Skill.new(params[:skill])
    
    if @skill.save
      flash[:success] = "Skill Data Entered"
      redirect_to :controller => 'skills',:action => 'new'
    else
      flash[:error] = "Skill Data Entry Failed"
      render 'new'
    end
  end
  
  def update
    @skill = Skill.find(params[:id])
    
    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        flash[:success] = "Skill Data Updated"
      else
        flash[:error] = "Skill Data Update Failed"
      end
      
      #format.html {
      #  redirect_to project_path
      #}
      format.json { 
        respond_with_bip(@skill)
      }
    end
  end
  
  def destroy
    @skill_id = params[:id]
    Skill.find(params[:id]).destroy
    flash[:success] = "Skill Data Deleted"
  end
  
end
