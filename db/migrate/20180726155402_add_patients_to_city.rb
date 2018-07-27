class AddPatientsToCity < ActiveRecord::Migration[5.2]
  def change
    add_reference :patients, :city, foreign_key: true
  end
end
