class DashboardsController < ApplicationController
  def index
    # @chatrooms = policy_scope(Chatroom)
    @carehomes = policy_scope(Carehome)
  end
end
