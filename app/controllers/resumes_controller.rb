class ResumesController < ApplicationController
  
  def create
    @resume = Resume.new(params[:resume])
    
    if @resume.save
      flash[:success] = "Resume Created"
    else
      flash[:error] = "Resume Creation Failed"
    end
  end
  
  def update
    @resume = Resume.find(params[:id])
    
    respond_to do |format|
      if @resume.update_attributes(params[:resume])
        flash[:success] = "Resume Updated"
      else
        flash[:error] = "Resume Update Failed"
      end
      
      #format.html {
      #  redirect_to project_path
      #}
      format.json { 
        respond_with_bip(@resume)
      }
    end
  end
  
  def destroy
    @resume_id = params[:id]
    Resume.find(params[:id]).destroy
    flash[:success] = "Resume Deleted"
  end
  
end
