class ReviewsController < ApplicationController
  def index
    policy_scope(Review)
    @reviews_form = Review.new
    @carehome = Carehome.find(params[:carehome_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @carehome = Carehome.find(params[:carehome_id])
    @review.carehome = @carehome
    if @review.save
      redirect_to carehome_reviews_path(@carehome)
    else
      render 'reviews/index', status: :unprocessable_entity
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :food, :privacy, :staff, :hygiene, :atmosphere)
  end
end
