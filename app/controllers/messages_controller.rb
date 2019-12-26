class MessagesController < ApplicationController
  def index
    user = current_user
    @nickname = user.name
  end

  def create

  end

  private

  def message_params
    params.require(:message).permit(:image, :text).merge(user_id: current_user.id)
  end
end
