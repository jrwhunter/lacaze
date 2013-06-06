class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @booking.start = params[:start]
    #end
  end

  def edit
    @booking = Booking.find(params[:id])
    render 'edit'
  end

  def create
    @booking = Booking.new(params[:booking])
    if @booking.save
      flash[:success] = "Booking saved"
      @bookings = Booking.all
      render 'index'
    else
      render 'new'
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update_attributes(params[:booking])
      flash[:success] = "Booking updated"
      @bookings = Booking.all
      render 'index'
    else
      render 'edit'
    end
  end

  def index
    @bookings = Booking.all
  end

  def destroy
    b = Booking.find(params[:id])
    b.destroy
    flash[:success] = "Booking removed."
    @bookings = Booking.all
    render 'index'
  end

  def edit_or_delete
    @booking = Booking.find(params[:id])
  end

end
