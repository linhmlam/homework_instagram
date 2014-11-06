class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo_detail = Photo.find_by({ :id => params["id"]})
    @photo_detail.source
    @photo_detail.caption
  end

  def new_form
  end

  def create_row
    @add_photo = Photo.new
    @add_photo.caption = params[:the_caption]
    @add_photo.source = params[:the_source]
    @add_photo.save

    @confirm = Photo.last
    @confirm.source
    @confirm.caption
  end

  def destroy
    @photo_to_delete = Photo.find_by({ :id => params["id"] })
    @photo_to_delete.source
    @photo_to_delete.caption
    @photo_to_delete.destroy

  end

end
