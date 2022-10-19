class AidsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @aids = Aid.all

    if params[:query].present?
      @aids = Aid.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @aids = Aid.all
    end
  end

  def show
    @aid = Aid.find(params[:id])
    @steps = Step.where(aid: @aid)
  end
end
