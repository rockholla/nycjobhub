class PagesController < ApplicationController
  
  def home
    @title = "Home"
    
    @listings = []
    #@listing_type = "job"
    #@listings_tmp = Listing.where(:source_type => @listing_type)
    #@listings = [@listings_tmp.first, @listings_tmp.last]
  end
  
  def search  # only called with JS
    # params[:listing_type]
    # params[:near]
    # params[:address] OR params[:subway_line]
    # if params[:subway_line], the params[:subway_stop]
    # if params[:address], then params[:within_radius]
    # if params[:subway_line] and params[:subway_stop], then params[:within_stops]
    # params[:keywords]
    @listing_type = params[:listing_type]
    @keywords = params[:keywords]
    @listings = Listing.search(@keywords)
    puts @listings.size.to_s
  end
  
  def dashboard
    if !signed_in?
      redirect_to signup_path   # takes you to page with both sign in and sign up options
    end
  end
  
  def show_listing_description
    @listing = Listing.find(params[:id])
  end
  
  def bookmark_this
  end
  
  def visit_page
  end
  
  def yelp
  end
  
end
