class ServicesController < ApplicationController

  def new

  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
      redirect_to service_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def service_params
    params.require(:service).permit(:service_title, :location, :price_rate, :user_id)
  end
end
