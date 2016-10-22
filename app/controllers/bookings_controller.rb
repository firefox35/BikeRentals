class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  before_filter :ensure_admin, :only => [:edit, :destroy]
  
  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
    
    if params[:search]
        # select all the bookings which match the search pattern
        @bookings = Booking.search(params[:search])
        # order the selected row(if any) ascending by created_at field/column
        @bookings = @bookings.order("created_at ASC")
    else
        # order all the row descending by created_at field/column
        @bookings = @bookings.order("created_at DESC")
    end
  end
  
  def ensure_admin
      unless current_user && current_user.admin?
          render :text => "Access Error Message", :status => :unauthorized
      end
  end
  
  
  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:user_id,:bicycle_type,:female_bicycles, :male_bicycles, :kids_bicycles , :date_from, :date_to, :price)
    end
end