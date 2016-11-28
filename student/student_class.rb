class StudentClass

  def initialize(name, cohort, talk, favourite_language)
    @name = name
    @cohort = cohort
    @talk = talk
    @favourite_language = favourite_language
  end

  def name()
    @name
  end

  def cohort()
    @cohort
  end

  def talk()
    @talk
  end  

  def favourite_language()
    @favourite_language
  end

  def student_speaking()
    return "I love #{@favourite_language}"
  end

  def student_name_update(new_name)
    @name = new_name
  end

  def student_cohort_update(new_cohort)
    @cohort = new_cohort
  end

end