class CarehomesController < ApplicationController
  def index
    @carehomes = Carehomes.all
  end
end
