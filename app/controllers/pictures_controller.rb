class PicturesController < ApplicationController
  
  def new
  end
  
  def create
    p = Picture.new
    p.url = params[:url]
    p.title = params[:title]
    p.save
    redirect_to '/pictures'
  end
  
  def index
    @pictures = Picture.all 
  end
  
  def show
    @picture = Picture.find_by_id(params["id"])
  end
  
end











