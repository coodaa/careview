class DashboardsController < ApplicationController
  def index
    @carehome = Carehome.where(user: current_user)
  end
end
