class EmergenciesController < ApplicationController
  def index
    # @emergencies = Emergency.all

    # @category = Category.find(params[:id])
    if params[:query].present?
      # @emergencies = Emergency.where(name: params[:query])
      @emergencies = Emergency.where("name ILIKE ?", "%#{params[:query]}%")
      # @emergencies = Emergency.where(category: @category).where("name ILIKE ?", "%#{params[:query]}%")
      # Preventing SQL Injection and Database error for
      # unknown characters
    else
      @emergencies = Emergency.all
      # @materials = Material.where(category: @category)
    end
  end

  def show
    @emergency = Emergency.find(params[:id])
  end

  def new
    @emergency = Emergency.new
  end

  def create
    @emergency = Emergency.new(emergency_params)
    @emergency.user = current_user
    if @emergency.save
      redirect_to emergencies_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @emergency = Emergency.find(params[:id])
  end

  def update
    @emergency = Emergency.find(params[:id])
    if @emergency.update(emergency_params)
      redirect_to emergencies_path, notice: "list was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @emergency = Emergency.find(params[:id])
    @emergency.destroy
    redirect_to emergencies_path, status: :see_other
  end

  private
  def emergency_params
    params.require(:emergency).permit(:name, :description)
  end
end
