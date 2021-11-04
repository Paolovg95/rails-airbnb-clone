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
    @service = Service.find(params[:id])
    @booking = Booking.new

    @services = Service.all

    @markers = @services.geocoded.map do |service|
      {
        lat: service.location.latitude,
        lng: service.location.longitude
      }
    end
  end

  private

  def service_params
    params.require(:service).permit(:service_title, :price_rate, :location, :list_id)
  end
end
