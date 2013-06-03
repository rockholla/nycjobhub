class SkillcategoriesController < ApplicationController
  
  def create
    @skillcategory = Skillcategory.new(params[:education])
    
    if @skillcategory.save
      flash[:success] = "Skill Category Entered"
    else
      flash[:error] = "Skill Category Entry Failed"
    end
  end
  
  def update
    @skillcategory = Skillcategory.find(params[:id])
    
    respond_to do |format|
      if @skillcategory.update_attributes(params[:skillcategory])
        flash[:success] = "Skill Category Updated"
      else
        flash[:error] = "Skill Category Update Failed"
      end
      
      #format.html {
      #  redirect_to project_path
      #}
      format.json { 
        respond_with_bip(@skillcategory)
      }
    end
  end
  
  def destroy
    @skillcategory_id = params[:id]
    Skillcategory.find(params[:id]).destroy
    flash[:success] = "Skill Category Deleted"
  end
  
end
