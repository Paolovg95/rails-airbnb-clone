class ListsController < ApplicationController

  def show
    @list = List.find(params[:id])
    @services = @list.services
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

    # @markers = @lists.geocoded.map do |list|
    #   {
    #     lat: list.latitude,
    #     lng: list.longitude
    #   }
    # end
    # the `geocoded` scope filters only lists with coordinates (latitude & longitude)
  end
end
