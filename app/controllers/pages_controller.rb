class PagesController < ApplicationController
  
  def home
    @title = "Home"
  end
  
  def search  # only called with JS
    # params[:listing_type]
    # params[:near]
    # params[:address] OR params[:subway_line]
    # if params[:subway_line], the params[:subway_stop]
    # if params[:address], then params[:within_radius]
    # if params[:subway_line] and params[:subway_stop], then params[:within_stops]
    # params[:keywords]
    
  end
  
  def dashboard
    if !signed_in?
      redirect_to signup_path   # takes you to page with both sign in and sign up options
    end
  end
  
  def search_options   # renders dropdown containing radio buttons/check boxes to select job search options
    @title = "Search Options"
  end
  
  def search_jobs   # renders dropdown containing radio buttons/check boxes to select job search options
    @title = "Search Jobs"
  end
  
  def build_resume    # launches 3/4 screen overlay
    @title = "Resume Builder"
  end
  
  def faq    # launches 3/4 screen overlay with Fertilla like question navigation
    @title = "FAQ"
  end
  
  def login    # renders simple dropdown for login with forgot password link 
    @title = "Log In"
  end
  
end
