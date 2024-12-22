class AddTotalPaymentToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :total_payment, :float
  end
end
