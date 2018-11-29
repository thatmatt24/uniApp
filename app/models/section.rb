class Section < ApplicationRecord

  enum semester: {Fall: 0, Summer: 1, Spring: 2}

  validates_presence_of :number, :semester, :room_number, :course_id

  def course_section
    "#{course.name} - #{number}"
  end

  belongs_to :course
  has_many :enrollments, dependent: :destroy
  has_many :students, through: :enrollments

end
