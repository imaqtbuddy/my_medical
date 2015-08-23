class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.integer :user_id
      t.string :phone_number
      t.string :specialty
      t.string :name

      t.timestamps

    end
  end
end
