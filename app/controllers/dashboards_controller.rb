class DashboardsController < ApplicationController
  def index
    @carehomes = Carehome.where(user: current_user)
    @carehomes = policy_scope(Carehome)
  end
end
