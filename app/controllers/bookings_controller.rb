class BookingsController < ApplicationController
  def new
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @venue = Venue.find(params[:venue_id])
    @booking.venue = @venue
    @booking.status = "Pending"
    @booking.user = current_user
    if @booking.save
      redirect_to payment_confirmation_booking_path(@booking)
    else
      render :show
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to user_path(current_user)
  end

  def payment_confirmation
    @booking = Booking.find(params[:id])

    start_time = @booking.start_time
    end_time = @booking.end_time

    duration_in_seconds = end_time - start_time

    @duration = nil
    if duration_in_seconds >= 3600
      @duration = "#{(duration_in_seconds / 3600).to_i} hours"
    else
      @duration = "#{(duration_in_seconds / 60).to_i} minutes"
    end

    duration_in_hours = duration_in_seconds / 3600.0
    @total_payment = (@booking.venue.rate * duration_in_hours).round(2)

    reviews = @booking.venue.reviews

    @rating = (reviews.average(:rating).to_f).round(2)

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests, :start_time, :end_time)
  end
end
