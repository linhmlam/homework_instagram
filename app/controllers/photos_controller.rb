class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_detail = Photo.find_by ({ :id => params["id"]})
    @photo_detail.source
    @photo_detail.caption
  end

  def new_form
    @add_photo = Photo.new
    @add_photo.caption = params[:the_caption]
    @add_photo.source = params[:the_source]
  end

end
