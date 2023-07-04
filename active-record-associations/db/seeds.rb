Clinic.destroy_all
Vet.destroy_all

specialty = ["dogs", "cats", "feline", "snacks", "birds"]
10.times do |c|
    Vet.create(vet_name: Faker::Name.first_name, specialty: specialty[rand(0..specialty.size)])

    Clinic.create(clinic_name: "#{Faker::Address.state} Pets Clinic", address: Faker::Address.full_address, phone: Faker::PhoneNumber.cell_phone)
end


# Appointment.create(patient_id:p1.id, vet_id:v1.id, date:Date.new(2021,10,5))
# Appointment.create(patient_id:p1.id, vet_id:v1.id, date:Date.new(2020,9,21))
# Appointment.create(patient_id:p1.id, vet_id:v2.id, date:Date.new(2019,3,11))

# Appointment.create(patient_id:p2.id, vet_id:v3.id, date:Date.new(2021,11,5))
# Appointment.create(patient_id:p2.id, vet_id:v2.id, date:Date.new(2020,8,21))
# Appointment.create(patient_id:p2.id, vet_id:v2.id, date:Date.new(2019,2,11))


# Appointment.create(patient_id:p3.id, vet_id:v1.id, date:Date.new(2021,1,10))
# Appointment.create(patient_id:p3.id, vet_id:v2.id, date:Date.new(2020,8,20))
# Appointment.create(patient_id:p3.id, vet_id:v2.id, date:Date.new(2019,4,23))

# Appointment.create(patient_id:p4.id, vet_id:v3.id, date:Date.new(2021,3,5))
# Appointment.create(patient_id:p4.id, vet_id:v3.id, date:Date.new(2020,5,15))
# Appointment.create(patient_id:p4.id, vet_id:v4.id, date:Date.new(2019,8,9))


# Appointment.create(patient_id:p5.id, vet_id:v4.id, date:Date.new(2021,11,5))
# Appointment.create(patient_id:p5.id, vet_id:v4.id, date:Date.new(2020,12,5))
# Appointment.create(patient_id:p5.id, vet_id:v4.id, date:Date.new(2019,1,5))