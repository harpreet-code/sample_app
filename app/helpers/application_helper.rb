module ApplicationHelper
  
  # Return a title on a per page basis.
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  # Return the sample app logo
  def logo
    return image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
