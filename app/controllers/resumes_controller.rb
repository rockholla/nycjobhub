class ResumesController < ApplicationController
  
  def create    # quick add executed on dashboard
    @resume = Resume.new
    @resume.user_id = current_user.id
    if @resume.save
      flash[:success] = "Resume Created"
    else
      flash[:error] = "Resume Creation Failed"
      redirect_to dashboard_path
    end
  end
  
  def edit
    @title = "Build your resume"
    @resume = Resume.find(params[:id])
  end
  
  def update
    @resume = Resume.find(params[:id])
    if @resume.update_attributes(params[:resume])
      flash[:success] = "Resume Updated"
      redirect_to :controller => "educations", :action => "index", :id => @resume.id
    else
      flash[:error] = "Resume Update Failed"
      render 'edit'
    end
  end
  
  def destroy
    @resume_id = params[:id]
    Resume.find(params[:id]).destroy
    flash[:success] = "Resume Deleted"
  end
  
end
