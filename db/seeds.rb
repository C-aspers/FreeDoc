# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

ptx = Patient.all
ptx.destroy_all
dcx = Doctor.all
dcx.destroy_all
apx = Appointment.all
apx.destroy_all
ctx = City.all
ctx.destroy_all

#50.times do
  #doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Lorem.word, zip_code: Faker::Address.zip_code)
#end

#50.times do
  #patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
#end

10.times do
  city = City.create!(city: Faker::Address.city, zip_code: Faker::Address.zip_code)
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Lorem.word, zip_code: Faker::Address.zip_code, city: city)
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: city)
  puts "bon"
  #All patient
#Patient.all


city = City.find(rand(City.first.id..City.last.id))

#sortir le medecin qui à l'id different
doctor = Doctor.find(rand(Doctor.first.id..Doctor.last.id))

#sortir le patient qui à l'id different
patient = Patient.find(rand(Patient.first.id..Patient.last.id))

#création d'un rendez vous avec les informations du docteur, du patient, et de la date
a = Appointment.create!(doctor: doctor, patient: patient, city: city, date: Faker::Date.between(from: '2021-09-23', to: '2021-09-25'))

#patient.city = city
#doctor.city = city
#a.city = city
#patient.save
#doctor.save
#a.save

end






