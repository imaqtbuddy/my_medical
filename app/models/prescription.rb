class Prescription < ActiveRecord::Base
validates :doctor, :presence=>true
validates :name, :presence=>true
belongs_to :user
belongs_to :doctor
belongs_to :appointment
end
