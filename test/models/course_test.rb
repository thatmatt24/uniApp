require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  test "course_name" do
    course = Course.new(name: 'TestName', department: 0, number: '0',credit_hours: '0')
    assert course.valid?
  end

  test 'invalid without name' do
    course = Course.new(department: 0, number: '0', credit_hours: '0')
    refute course.valid?, 'course is valid without name'
    assert_not_nil course.errors[:name], 'no validation error for name present'
  end

  test 'invalid without dept' do
    course = Course.new(name: 'TestName', number: '0', credit_hours: '0')
    refute course.valid?
    assert_not_nil course.errors[:department]
  end

  test 'invalid without dept' do
    course = Course.new(name: 'TestName', number: '0', credit_hours: '0')
    refute course.valid?
    assert_not_nil course.errors[:department]
  end

  test 'invalid without dept' do
    course = Course.new(name: 'TestName', number: '0', credit_hours: '0')
    refute course.valid?
    assert_not_nil course.errors[:department]
  end

end