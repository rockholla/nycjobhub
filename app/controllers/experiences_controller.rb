class ExperiencesController < ApplicationController
  
  def create
    @experience = Experience.new(params[:education])
    
    if @experience.save
      flash[:success] = "Experience Data Entered"
    else
      flash[:error] = "Experience Data Entry Failed"
    end
  end
  
  def update
    @experience = Experience.find(params[:id])
    
    respond_to do |format|
      if @experience.update_attributes(params[:experience])
        flash[:success] = "Experience Data Updated"
      else
        flash[:error] = "Experience Data Update Failed"
      end
      
      #format.html {
      #  redirect_to project_path
      #}
      format.json { 
        respond_with_bip(@experience)
      }
    end
  end
  
  def destroy
    @experience_id = params[:id]
    Experience.find(params[:id]).destroy
    flash[:success] = "Experience Data Deleted"
  end
  
end
