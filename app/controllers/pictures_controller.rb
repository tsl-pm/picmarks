class PicturesController < ApplicationController
  
  def add_picture
  end
  
  def create
    p = Picture.new
    p.url = params["sample_text_field"]
    p.save
    # render :status => 302, :location => '/pictures'
    redirect_to '/pictures'
  end
  
  # Support /pictures?width=40&color=green
  # and make the view use the values in the url.
  def index
    @picture_urls = Picture.all 
    @width = params["width"]
    @color = params["color"]
  end
  
  
  def show
    id_number = params["id"].to_i
    @url = image_library[id_number - 1]
  end

  def image_library
    return Picture.all
  end

  
  
end
