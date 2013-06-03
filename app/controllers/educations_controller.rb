class EducationsController < ApplicationController
  
  def create
    @education = Education.new(params[:education])
    
    if @education.save
      flash[:success] = "Education Data Entered"
    else
      flash[:error] = "Education Data Entry Failed"
    end
  end
  
  def update
    @education = Education.find(params[:id])
    
    respond_to do |format|
      if @education.update_attributes(params[:education])
        flash[:success] = "Education Data Updated"
      else
        flash[:error] = "Education Data Update Failed"
      end
      
      #format.html {
      #  redirect_to project_path
      #}
      format.json { 
        respond_with_bip(@education)
      }
    end
  end
  
  def destroy
    @education_id = params[:id]
    Education.find(params[:id]).destroy
    flash[:success] = "Education Data Deleted"
  end
  
end
