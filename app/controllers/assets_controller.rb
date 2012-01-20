class AssetsController < ApplicationController

  def destroy
  	@asset = Asset.find(params[:id])
  	@album = @asset.album
  	@asset.destroy
  	flash[:notice] = "Photo successfully removed."
  	redirect_to edit_album_path(@album)
  end

end