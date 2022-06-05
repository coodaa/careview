class CarehomesController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @carehomes = policy_scope(Carehome).page params[:page]
    @markers = @carehomes.geocoded.map do |carehome|
      {
        lat: carehome.latitude,
        lng: carehome.longitude,
        info_window: render_to_string(partial: "info_window", locals: { carehome: carehome }),
        image_url: helpers.asset_url("/assets/mapin.png")
      }
    end

    if params[:query].present?
      @carehomes = Carehome.where("address LIKE ?", "%#{params[:query]}%").page params[:page]
      # @carehomes = Carehome.search(params[:query], fields: [:name, :address], match: :word_middle)
      @carehomes = filter_homes(@carehomes)
    else
      @carehomes = filter_homes(@carehomes)
    end
  end

  def show
    @carehome = Carehome.find(params[:id])
    authorize @carehome
    @marker = {
      lat: @carehome.latitude,
      lng: @carehome.longitude,
      image_url: helpers.asset_url("/assets/mapin.png")
    }

    @ratings = {
      rating: @carehome.reviews.average(:rating).to_f.round(2),
      food: @carehome.reviews.average(:food).to_f.round(2),
      privacy: @carehome.reviews.average(:privacy).to_f.round(2),
      staff: @carehome.reviews.average(:staff).to_f.round(2),
      hygiene: @carehome.reviews.average(:hygiene).to_f.round(2),
      atmosphere: @carehome.reviews.average(:atmosphere).to_f.round(2)
    }

    @reviews = @carehome.reviews
  end

  def new
    @carehome = Carehome.new
    authorize @carehome
  end

  def create
    @carehome = Carehome.new(carehome_params)
    @carehome.user = current_user
    @carehome.save!
    authorize @carehome
  end

  private

  def carehome_params
    params.require(:carehome).permit(:address, :name, :min_price, :max_price, :description, :types, :activities, :pets_allowed, :wifi, :lift, :wheelchair_access, :security, :smoke_alarm, :tv, :parking, :hair_salon, :sauna, :bar, :air_conditioning, :physiotherapist, photos: [])
  end

  def filter_homes(homes)
    if params[:wifi].present?
      homes = homes.where(wifi: true)
    end
    if params[:bar].present?
      homes = homes.where(bar: true)
    end
    if params[:activities].present?
      homes = homes.where(activities: true)
    end
    if params[:pets_allowed].present?
      homes = homes.where(pets_allowed: true)
    end
    if params[:wheelchair_access].present?
      homes = homes.where(wheelchair_access: true)
    end
    if params[:lift].present?
      homes = homes.where(lift: true)
    end
    if params[:security].present?
      homes = homes.where(security: true)
    end
    if params[:smoke_alarm].present?
      homes = homes.where(smoke_alarm: true)
    end
    if params[:tv].present?
      homes = homes.where(tv: true)
    end
    if params[:parking].present?
      homes = homes.where(parking: true)
    end
    if params[:hair_salon].present?
      homes = homes.where(hair_salon: true)
    end
    if params[:sauna].present?
      homes = homes.where(sauna: true)
    end
    if params[:air_conditioning].present?
      homes = homes.where(air_conditioning: true)
    end
    if params[:physiotherapist].present?
      homes = homes.where(physiotherapist: true)
    end
    homes
  end
end
