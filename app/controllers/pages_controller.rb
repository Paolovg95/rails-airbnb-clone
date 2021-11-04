class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @lists = List.all
  end

  def about_us
  end

  def contact_us
  end
end
