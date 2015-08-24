User.create!([
  {email: "andi@test.com", encrypted_password: "$2a$10$XIq8az/EOlh6fir7gElXPekpcVRm7eNMz5.wwniT1vma5s2jdzvmu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-08-23 02:59:36", last_sign_in_at: "2015-08-23 02:59:36", current_sign_in_ip: "::1", last_sign_in_ip: "::1", doctor_id: nil, password: nil, email_address: nil}
])
Appointment.create!([
  {user_id: nil, notes: "Dermatologist appt because skin has been acting up.", doctor_id: 0, met_on: "0006-03-15"},
  {user_id: nil, notes: "GI-prescribed new medicine", doctor_id: 0, met_on: "0004-03-15"},
  {user_id: nil, notes: "4 month check up", doctor_id: 0, met_on: "0005-04-14"},
  {user_id: nil, notes: "6 month dentist check up", doctor_id: 0, met_on: "0004-03-15"},
  {user_id: nil, notes: "allergy issues-appointment 1", doctor_id: 0, met_on: "0004-03-12"},
  {user_id: nil, notes: "Allergy issues-appointment 2", doctor_id: 0, met_on: "0005-06-12"}
])
Doctor.create!([
  {user_id: nil, phone_number: "312-375-2831", specialty: "Internal Medicine", name: "Susan Barnes"},
  {user_id: nil, phone_number: "555-333-1132", specialty: "Dermatology", name: "Amy Redding"},
  {user_id: nil, phone_number: "312-428-2842", specialty: "Gastroenterology", name: "Rick Stein"},
  {user_id: nil, phone_number: "312-382-1842", specialty: "Dentist", name: "Arthur Lopez"},
  {user_id: nil, phone_number: "312-542-1823", specialty: "Psychiatrist", name: "Samantha Stone"}
])
Prescription.create!([
  {user_id: nil, doctor_id: 0, taken_since: "0006-03-15", appointment_id: 1, dosage: "Apply twice daily.", category: "Topical Acne", name: "Differin"},
  {user_id: nil, doctor_id: 0, taken_since: "0004-03-15", appointment_id: 2, dosage: "10 mg as needed every 4 hours", category: "Heartburn", name: "Zantac"},
  {user_id: nil, doctor_id: 0, taken_since: "0005-04-14", appointment_id: 3, dosage: "40 mg a day", category: "ADHD Treatment", name: "Ritalin"},
  {user_id: nil, doctor_id: 0, taken_since: "0004-03-12", appointment_id: 5, dosage: "Two sprays in each nostril twice a day as needed", category: "Allergy ", name: "Nasonex"},
  {user_id: nil, doctor_id: 0, taken_since: "0005-06-12", appointment_id: 6, dosage: "10 mg every morning", category: "Allergy", name: "Zyrtec"}
])
