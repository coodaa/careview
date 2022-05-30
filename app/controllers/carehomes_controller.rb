class CarehomesController < ApplicationController

  skip_before_action :authenticate_user!

  def index
    @carehomes = Carehome.all
  end

  def show
    @carehome = Carehome.find(params[:id])
  end
end
