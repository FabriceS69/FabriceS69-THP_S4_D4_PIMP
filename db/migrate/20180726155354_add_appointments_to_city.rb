class AddAppointmentsToCity < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :city, foreign_key: true
  end
end
