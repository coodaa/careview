class ChatroomsController < ApplicationController
  def new
    @chatroom = Chatroom.new
  end

  def index
    @chatrooms = Chatroom.all
    @carehome = Carehome.find(params[:carehome_id])
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.user = current_user
    @carehome = Carehome.find(params[:carehome_id])
    @chatroom.carehome = @carehome
    @chatroom.save
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:carehome_id, :user_id)
  end
end
