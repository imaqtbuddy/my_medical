class Doctor < ActiveRecord::Base
validates :name, :presence=>true,:uniqueness=>true
validates :specialty, :presence=>true
has_many :prescriptions
has_many :appointments , :class_name => "Appointment", :foreign_key => "doctor_id"
has_many :users , :class_name => "User", :foreign_key => "doctor_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
end
