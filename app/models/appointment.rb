class Appointment < ActiveRecord::Base
validates :doctor_id, :presence=>true
validates :met_on, :presence=>true
validates :notes, :presence=>true
has_many :prescriptions
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :doctor
end
