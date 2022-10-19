class AidsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    if params[:query].present?
      @aids = policy_scope(Aid.where("name ILIKE ?", "%#{params[:query]}%"))
    else
      @aids = policy_scope(Aid)
    end
  end

  def show
    @aid = Aid.find(params[:id])
    @steps = Step.where(aid: @aid)
    authorize @aid
  end
end
