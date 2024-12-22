class ChangeDataTypeForGuests < ActiveRecord::Migration[6.1]
  def change
    change_column(:bookings, :guests, :string)
  end
end
