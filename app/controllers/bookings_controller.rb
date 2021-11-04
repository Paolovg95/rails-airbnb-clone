class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def create
    @service = Service.find(params[:service_id])
    @booking = Booking.new(booking_params)
    @booking.service = @service
    @booking.user = current_user
    if @booking.save!
      redirect_to root_path, notice: 'Booking successful'
    else
      render :new
    end
  end


  # def edit
  #   set_booking
  #   @booking = Booking.find(params[:id])
  #   # authorize @booking
  # end

  # def update
  #   set_booking
  #   # authorize @booking
  #   if @booking.update(booking_params)
  #     redirect_to booking_path(@booking), notice: 'Booking was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   set_booking
  #   authorize @booking
  #   @booking.destroy
  #   redirect_to dashboard_path, notice: 'Booking was successfully deleted.'
  # end

  private

  # def find_service
  #   @service = Service.find(params[:service_id])
  # end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
