class CarehomesController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @carehomes = Carehome.all
  end

  def show
    @carehome = Carehome.find(params[:id])
  end

  def new
    @carehome = Carehome.new
  end

  def create
    @carehome = Carehome.new(carehome_params)
    @carehome.user = current_user
    @carehome.save
  end

  private

  def carehome_params
    params.require(:carehome).permit(:address, :name, :price_range, :description, :types, :activities, :pets_allowed, :wifi, :lift, :wheelchair_access, :security, :smoke_alarm, :tv, :parking, :hair_salon, :sauna, :bar, :air_conditioning, :physiotherapist)
  end

end
