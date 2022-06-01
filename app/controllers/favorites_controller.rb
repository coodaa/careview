class FavoritesController < ApplicationController
  def index
    policy_scope(Favorite)
    @favorites_form = Favorite.new
    @carehome = Carehome.find(params[:carehome_id])
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @rfavorite.user = current_user
    @carehome = Carehome.find(params[:carehome_id])
    @favorita.carehome = @carehome
    if @favorite.save
      redirect_to carehome_favorites_path(@carehome)
    else
      redirect_to carehomes_path(@carehome), status: :unprocessable_entity
    end
    authorize @favorite
  end

  private

  def favorite_params
    params.require(:review).permit(:user_id, :carehome_id)
  end
end
