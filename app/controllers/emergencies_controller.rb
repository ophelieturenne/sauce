class EmergenciesController < ApplicationController
  def index
    @emergencies = Emergency.all
  end

  def show

  end

  def new
    @emergency = Emergency.new
  end

  def create
    @emergency = Emergency.new(emergency_params)
    # @emergency.user = current_user
    if @emergency.save
      redirect_to emergencies_path
    else
      render :new, status: :unprocessable_entity
    end

  end


  private
  def emergency_params
    params.require(:emergency).permit(:name, :description)
  end
end
