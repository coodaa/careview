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
      @carehomes = Carehome.search(params[:query], fields: [:name, :address], match: :word_middle)
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
  end

  def new
    @carehome = Carehome.new
    authorize @carehome
  end

  def create
    @carehome = Carehome.new(carehome_params)
    @carehome.user = current_user
    @carehome.save
    authorize @carehome
  end

  private

  def carehome_params
    params.require(:carehome).permit(:address, :name, :price_range, :description, :types, :activities, :pets_allowed, :wifi, :lift, :wheelchair_access, :security, :smoke_alarm, :tv, :parking, :hair_salon, :sauna, :bar, :air_conditioning, :physiotherapist)
  end

  def filter_homes(homes)
    if params[:wifi].present?
      homes = homes.search(where: {wifi: true})
    end
    if params[:bar].present?
      homes = homes.search(where: {bar: true})
    end
    homes
  end
end
