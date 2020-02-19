class ReservationsController < ApplicationController
  before_action :authenticate_user!

  def create
    @reservation = current_user.reservations.create(reservations_params)

    redirect_to @reservation.room, notice: 'Your reservation has boon created!'
  end

  private

  def reservations_params
    params.require(:reservation).permit(:start_date, :end_date, :price, :total, :room_id)
  end

end
