class MessagesController < ApplicationController
  def index
    user = current_user
    @nickname = user.name
  end
end
