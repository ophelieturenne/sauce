class AidsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  
  def index
    @aids = Aid.all
  end

  def show
    @aids = Aid.where(aid: @aid)
  end
end
