class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

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

  def update
    if @list.update(list_params)
      redirect_to @list, notice: "List updated"
    end
  end

  def show

  end

  def edit
  end
  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:listing_type, :listing_title, :location, :price_rate, :listing_title, :user_id)
  end
end
