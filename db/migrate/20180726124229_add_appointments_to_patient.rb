class AddAppointmentsToPatient < ActiveRecord::Migration[5.2]
  add_reference :appointments, :patient, foreign_key: true
  def change
  end
end
