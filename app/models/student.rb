class Student < ApplicationRecord

  validates_presence_of :name

  has_many :enrollments, dependent: :destroy
  has_many :sections, through: :enrollments
end
