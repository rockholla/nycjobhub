module ApplicationHelper
  
  # Returns a title on a per page basis
  def title
    base_title = "NYC Job Hub"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
end
