class ServicesController < ApplicationController

  def index
    @services = Service.where(user_id: current_user.id)
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id

    if @service.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    find_service

    @booking = Booking.new
    @services = Service.all

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude
      }
    end
  end

  def edit
    find_service
  end

  def update
    find_service
    @service.update(service_params)
    redirect_to service_path
  end

  def destroy
    find_service
    @service.destroy
    redirect_to service_path
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:service_title, :price_rate, :location, :list_id)
  end
end
