class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def index
    @lists = List.all

    @markers = @lists.geocoded.map do |list|
      {
        lat: list.latitude,
        lng: list.longitude
      }
    end
    # the `geocoded` scope filters only lists with coordinates (latitude & longitude)
  end
end
