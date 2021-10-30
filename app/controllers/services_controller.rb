class ServicesController < ApplicationController
  # before_action :find_list, only: [:new, :create]
  def new
    @service = Service.new

  end

  def create
    @service = Service.new(service_params)
    @service.user_id = current_user.id
    @service.list_id = list
    if @service.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def find_list
    @list = List.find_by(params[:listing_type])
  end

  def service_params
    params.require(:service).permit(:service_title, :price_rate, :location, :user_id)
  end

end
