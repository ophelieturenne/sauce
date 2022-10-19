class EmergenciesController < ApplicationController
  def index
    @emergencies = policy_scope(Emergency)
  end

  def show
    @emergency = Emergency.find(params[:id])
    authorize @emergency
  end

  def new
    @emergency = Emergency.new
    authorize @emergency
  end

  def create
    @emergency = Emergency.new(emergency_params)
    @emergency.user = current_user
    authorize @emergency
    if @emergency.save
      redirect_to emergencies_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @emergency = Emergency.find(params[:id])
    authorize @emergency
  end

  def update
    @emergency = Emergency.find(params[:id])
    authorize @emergency
    if @emergency.update(emergency_params)
      redirect_to emergencies_path, notice: "list was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @emergency = Emergency.find(params[:id])
    authorize @emergency
    @emergency.destroy
    redirect_to emergencies_path, status: :see_other
  end

  private
  def emergency_params
    params.require(:emergency).permit(:name, :description)
  end
end
