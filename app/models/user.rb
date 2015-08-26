class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :prescriptions
has_many :appointments
# ,:class_name => "Appointment", :foreign_key => "user_id"
# has_many :doctors , :class_name => "Doctor", :foreign_key => "user_id"
# belongs_to :doctor
has_many :doctors, :through => :appointments
end
