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
    
    respond_to do |format|
      format.html { render 'index'}
      format.json { render :json => @pictures }
    end
  end
  
  def show
    @picture = Picture.find_by_id(params["id"])
  end
  
  def destroy
    p = Picture.find_by_id(params["id"])
    p.destroy
    redirect_to pictures_url
  end
  
  def edit
    @picture = Picture.find_by_id(params["id"])
  end
  
end























