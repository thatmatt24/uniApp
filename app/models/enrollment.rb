class Enrollment < ApplicationRecord

  validates_presence_of :section, :student

  belongs_to :section
  belongs_to :student
end
