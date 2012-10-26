class PicturesController < ApplicationController
  
  def new
    @picture = Picture.new
  end
  
  def create
    @picture = Picture.new(params[:picture])
    
    if @picture.save
      redirect_to pictures_url
    else
      flash[:notice] = "You forgot something."
      render 'new'
    end
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
  
  def update
    @picture = Picture.find_by_id(params["id"])
    @picture.url = params[:url]
    @picture.title = params[:title]
    if @picture.save
      redirect_to picture_url(@picture.id)
    else
      render 'edit'
    end
  end
end























