class ReviewsController < ApplicationController

  def index
    @reviews_form = Review.new
    @carehome = Carehome.find(params[:carehome_id])
    @carehomespol = policy_scope(Review)
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @carehome = Carehome.find(params[:carehome_id])
    @review.carehome = @carehome
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :food, :privacy, :staff, :hygiene, :atmosphere)
  end

end
