# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do 
  City.create(name: Faker::Pokemon.location)
end

10.times do
  d = Doctor.create(first_name: Faker::Pokemon.name, last_name: Faker::Pokemon.location, postal_code: Faker::Address.zip, city_id: rand(1..10))
  s = Specialty.create(name_specialty: Faker::Dessert.variety)
  d.specialty_ids = s.id
end

10.times do
  Patient.create(first_name: Faker::Dessert.variety, last_name: Faker::Dessert.flavor, city_id: rand(1..10))
end

10.times do
  Appointment.create(date: Faker::Time.between(2.days.ago, Date.today, :all), doctor_id: rand(1..10), patient_id: rand(1..10), city_id: rand(1..10))
end
