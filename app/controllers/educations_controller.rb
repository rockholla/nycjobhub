class EducationsController < ApplicationController
  
  def create
    @education = Education.new
    @education.resume_id = params[:id].to_i
    if @education.save
      flash[:success] = "Education Entry Created"
    else
      flash[:error] = "Education Entry Creation Failed"
      render 'index'
    end
  end
  
  def edit
    @title = "Edit Education Info"
    @education = Education.find(params[:id])
  end
  
  def update
    @education = Education.find(params[:id])
    if @education.update_attributes(params[:education])
      flash[:success] = "Education Info Updated"
    else
      flash[:error] = "Education Info Update Failed"
    end
  end
  
  def index
    @title = "Education"
    @resume = Resume.find(params[:id])
  end
  
  def destroy
    @education_id = params[:id]
    Education.find(params[:id]).destroy
    flash[:success] = "Education Entry Deleted"
  end
  
end
