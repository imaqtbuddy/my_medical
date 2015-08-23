class Appointment < ActiveRecord::Base
has_many :prescriptions
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :doctor
end
