class Course < ApplicationRecord

  enum department: {CS: 0, MTH: 1, CYB: 2}

  validates_presence_of :name, :department, :number, :credit_hours

  has_many :sections, dependent: :destroy
end
