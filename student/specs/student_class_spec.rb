require ('minitest/autorun')
require_relative ('../student_class.rb')

class StudentClassSpec < MiniTest::Test

  def test_student_existence
    student = StudentClass.new("Peter", 9, "I can talk", "Ruby")
    assert_equal("Peter", student.name())
  end

  def test_students_cohort
    student = StudentClass.new("Peter", 9, "I can talk", "Ruby")
    assert_equal(9, student.cohort())
  end

  def test_students_talk
    student = StudentClass.new("Peter", 9, "I can talk", "Ruby")
    assert_equal("I can talk", student.talk())
  end

  def test_students_favourite_language
    student = StudentClass.new("Peter", 9, "I can talk", "Ruby")
    assert_equal("Ruby", student.favourite_language())
  end

  def test_student_speaking
    student = StudentClass.new("Peter", 9, "I can talk", "Ruby")
    assert_equal("I love Ruby", student.student_speaking())
  end

  def test_student_name_update
    student = StudentClass.new("Peter", 9, "I can talk", "Ruby")
    student.student_name_update("John")
    assert_equal("John", student.name())
  end

  def test_student_cohort_update
    student = StudentClass.new("Peter", 9, "I can talk", "Ruby")
    student.student_cohort_update(10)
    assert_equal(10, student.cohort())
  end

end