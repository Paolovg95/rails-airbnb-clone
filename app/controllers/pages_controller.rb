class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @lists = List.all
    # geocoded map
    # @markers = @lists.geocoded.map do |list|
    #   {
    #     lat: list.latitude,
    #     lng: list.longitude
    #   }
    # end
  end
end
