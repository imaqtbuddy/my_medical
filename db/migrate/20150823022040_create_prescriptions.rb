class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :user_id
      t.integer :doctor_id
      t.date :taken_since
      t.date :expiration_date
      t.integer :appointment_id
      t.text :dosage
      t.string :category
      t.string :name

      t.timestamps

    end
  end
end
