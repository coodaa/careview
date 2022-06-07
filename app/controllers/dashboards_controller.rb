class DashboardsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
    @chatroom = Chatroom.new
    @carehomes = policy_scope(Carehome)
    @message = Message.new
    authorize @chatroom
    authorize @carehomes
  end
end
