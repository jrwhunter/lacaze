class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :name
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
