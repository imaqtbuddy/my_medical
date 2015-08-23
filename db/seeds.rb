User.create!([
  {email: "andi@test.com", encrypted_password: "$2a$10$XIq8az/EOlh6fir7gElXPekpcVRm7eNMz5.wwniT1vma5s2jdzvmu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-08-23 02:59:36", last_sign_in_at: "2015-08-23 02:59:36", current_sign_in_ip: "::1", last_sign_in_ip: "::1", doctor_id: nil, password: nil, email_address: nil}
])
Appointment.create!([
  {user_id: nil, notes: "This appointment was a general physical.", doctor_id: 0, met_on: "0005-04-12"},
  {user_id: nil, notes: "Dermatology check-up", doctor_id: 3, met_on: "0005-04-13"}
])
Doctor.create!([
  {user_id: nil, phone_number: "555-354-2421", specialty: "Internal Medicine", name: "Susan Barnes"},
  {user_id: nil, phone_number: "403-142-1422", specialty: "Dermatology", name: "Eric Rodel"}
])
Prescription.create!([
  {user_id: nil, doctor_id: 1, taken_since: "0004-02-15", appointment_id: 1, dosage: "50 mg", category: "Antibiotic", name: "Amoxicillin"},
  {user_id: nil, doctor_id: 0, taken_since: "0008-04-15", appointment_id: 0, dosage: "2 capsules as needed every 6 hours", category: "Pain Killer", name: "Ibuprofen"}
])
