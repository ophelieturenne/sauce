class EmergenciesController < ApplicationController
  def index
    @emergencies = Emergency.all
  end

  def show

  end
end
