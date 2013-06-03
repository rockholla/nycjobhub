class PagesController < ApplicationController
  
  def home
    @title = "Home"
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
