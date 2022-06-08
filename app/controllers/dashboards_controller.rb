class DashboardsController < ApplicationController
  def index
    @chatrooms = policy_scope(Chatroom)
    @message = Message.new
  end
end
