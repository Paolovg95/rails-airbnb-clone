class ListsController < ApplicationController

  def index
    @lists = List.all

    # the `geocoded` scope filters only lists with coordinates (latitude & longitude)
    @markers = @lists.geocoded.map do |list|
      {
        lat: list.latitude,
        lng: list.longitude
      }
    end
  end

  def show
    @list = List.find(params[:id])
  end
end
