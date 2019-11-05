class PhotosController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    place_photos_path(@place)
  end


  private

  def photo_params
    params.require(:photo).permit(:text, :picture)
  end
end

