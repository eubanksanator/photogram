class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find(params['id'])
  end

  def new

  end

  def create_row
    @create_photo = Photo.new
    @create_photo.caption = params['the_caption']
    @create_photo.source = params['the_source']

    @create_photo.save
  end

  def update
    @photo = Photo.find(params[:id])
  end

  def edit
    @photo = Photo.find(params[:id])

    @photo.caption = params[:caption]
    @photo.source = params[:source]

    @photo_edit.save
  end

  def delete
    @delete_photo = Photo.find(params['id'])
    @delete_photo.destroy
  end
end
