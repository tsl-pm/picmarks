class PicturesController < ApplicationController
  
  def add_picture
    
  end
  # Support /pictures?width=40&color=green
  # and make the view use the values in the url.
  def index
    @picture_urls = image_library 
    
    if params["sample_text_field"] != nil
      @new_url = params["sample_text_field"]
      @picture_urls.insert(0, @new_url)
    end
    
    @width = params["width"]
    @color = params["color"]
  end
  
  
  def show
    id_number = params["id"].to_i
    @url = image_library[id_number - 1]
  end

  def image_library
    url1 = "http://www.trbimg.com/img-507c4060/turbine/la-pn-romney-obama-election-polls-20121015-001/600"
    url2 = "http://www.trbimg.com/img-507c624a/turbine/chi-ald-reilly-said-he-supports-nu-plan-to-tea-001/600"
    url3 = "http://www.trbimg.com/img-5078b31c/turbine/ct-top-less-crowded-ruins-sites-pg-009/600" 

    return [url1, url2, url3]
  end

  
  
end
