class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.text :notes
      t.integer :doctor_id
      t.date :met_on

      t.timestamps

    end
  end
end
