class PhotosController < ApplicationController

  def index 
    @photos = Photo.all
  end

  def new
    @new_photo = Photo.new
  end

  def create
    @new_photo = Photo.new(photo_params)
    if @new_photo.save
      redirect_to photos_path
    else
      redirect_to new_photo_path
    end
  end

  def show
    @photo = Photo.find(params[:id])
    @new_comment = @photo.comments.build
  
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(photo_params)
      redirect_to photos_path
    else
      redirect_to photo_path
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
      if @photo.delete
      redirect_to photos_path
    end
  end

  def search
    @search_results  = Photo.search(params[:search])
    render results_photos_path
  end


  def results
  end 

  def download_photo_pic
    @photo = Photo.find(params[:id])
    file = @photo.photo_pic
    send_file file.path
  end


  private

  def photo_params
    params.require(:photo).permit(comments_attributes: :message)
  end 

end