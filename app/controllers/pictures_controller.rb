class PicturesController < ApplicationController
  
  # Challenge:
  # 1. Support this url: /pictures/1
  # and show the first photo from the array 
  # 2. Support this url: /pictures/2
  # and show the second photo from the array 
  # 
  
  def image_library
    url1 = "http://www.trbimg.com/img-507c4060/turbine/la-pn-romney-obama-election-polls-20121015-001/600"
    url2 = "http://www.trbimg.com/img-507c624a/turbine/chi-ald-reilly-said-he-supports-nu-plan-to-tea-001/600"
    url3 = "http://www.trbimg.com/img-5078b31c/turbine/ct-top-less-crowded-ruins-sites-pg-009/600" 

    return [url1, url2, url3]
  end
  
  def show
    id_number = params["id"].to_i
    @url = image_library[id_number - 1]
  end





  
  def index
    @picture_urls = image_library 
  end
  
end