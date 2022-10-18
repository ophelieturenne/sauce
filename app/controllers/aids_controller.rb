class AidsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @aids = Aid.all
  end

  def show
    @steps = Step.all
  end
end
