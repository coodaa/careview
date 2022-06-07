class ReviewsController < ApplicationController
  def index
    policy_scope(Review)
    @review = Review.new
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

  def show
    @carehome = Carehome.find(params[:id])
    authorize @carehome
    @marker = {
      lat: @carehome.latitude,
      lng: @carehome.longitude,
      image_url: helpers.asset_url("/assets/mapin.png")
    }

    # Calculate average rating for the carehome
    unless @carehome.reviews.empty?
      total_reviews = @carehome.reviews.count
      count = 0
      @carehome.reviews.each do |review|
        count += review.average_ratings
      end
      average_rating = count / total_reviews

      @ratings = {
        rating: average_rating.round(1),
        food: @carehome.reviews.average(:food).to_f.round(1),
        privacy: @carehome.reviews.average(:privacy).to_f.round(1),
        staff: @carehome.reviews.average(:staff).to_f.round(1),
        hygiene: @carehome.reviews.average(:hygiene).to_f.round(1),
        atmosphere: @carehome.reviews.average(:atmosphere).to_f.round(1)
      }
    end

    @reviews = @carehome.reviews
    @reviews_last = @reviews.drop(2)
  end

  def new
    @review = Review.new
    @carehome = Carehome.last
    # change it to params 
    authorize @review
    authorize @carehome
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :food, :privacy, :staff, :hygiene, :atmosphere)
  end
end
