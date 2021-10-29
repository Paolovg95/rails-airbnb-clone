class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
    authorize @list
  end

  def update
    @list = List.find(params[:id])
    authorize @list
    @list.update(list_params)
  end

  private

  def list_params
    params.require(:list).permit(:listing_type, :listing_title, :location, :price_rate)
  end
end
