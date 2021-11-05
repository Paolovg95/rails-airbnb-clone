class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
    if params[:query].present?
      @services = Service.global(params[:query]).where(list_id: @list.id)
    else
      @services = Service.all.where(list_id: @list.id)
    end
    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude
      }
    end
  end

  def index
    @lists = List.all
    @markers = @lists.geocoded.map do |list|
      {
        lat: list.latitude,
        lng: list.longitude
      }
    end


  end
end
