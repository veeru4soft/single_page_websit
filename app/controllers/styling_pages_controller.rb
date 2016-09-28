class StylingPagesController < ApplicationController

  # GET /styling_pages
  # GET /styling_pages.json
  def index
    site_color = StylingPage.find(1)
    session[:color] = site_color.color
    session[:font] = site_color.font
    session[:title] = site_color.title
  end

  def save_property
    params.except(:controller, :action)
    case 
    when params.keys.include?("color")
      session[:color] = params["color"]
      StylingPage.find(1).update_attributes(color: params["color"])
    when params.keys.include?("font")
      session[:font] = params["font"]
      StylingPage.find(1).update_attributes(font: params["font"])
    when params.keys.include?("title")
      session[:title] = params["title"]
      StylingPage.find(1).update_attributes(title: params["title"])
    end
    render nothing: true
  end
end
