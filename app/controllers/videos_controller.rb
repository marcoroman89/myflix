class VideosController < ApplicationController
  
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find_by params[:id]
  end

  def new
    
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end
end  

