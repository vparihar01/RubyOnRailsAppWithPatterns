class VideosController < ApplicationController

  def index
    @videos = Category.find(params[:category_id]).videos
  end


  def new
    @video = Video.new

  end

  def create
    @video = Video.new(params[:video])
    @video.save
    redirect_to root_path
  end

  def destroy
    video = Video.find(params[:id])
    video.destroy
    redirect_to :back
  end

end
