class CreateJoinTableSpecialtyDoctor < ActiveRecord::Migration[5.2]
  def change
    create_join_table :specialties, :doctors do |t|
      t.index [:specialty_id, :doctor_id]
      t.index [:doctor_id, :specialty_id]
    end
  end
end
