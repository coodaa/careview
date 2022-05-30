class FavoritesController < ApplicationController

  def index
    @favorites_form = Favorite.new
    @carehome = Carehome.find(params[:carehome_id])
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    @carehome = Carehome.find(params[:carehome_id])
    @favorite.carehome = @carehome
    @favorite.save
  end

  private

  def favorite_params
    params.require(:review).permit(:user_id, :carehome_id)
  end

end
