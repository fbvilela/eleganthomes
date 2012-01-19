class AssetsController < ApplicationController

  def destroy
  	@asset = Asset.find(params[:id])
  	@album = Album.find(params[:album_id])
  	@asset.destroy
  	flash[:notice] = "Photo successfully deleted."
  	redirect_to edit_album_path(@album)
  end

end