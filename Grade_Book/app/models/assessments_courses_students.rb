class AssessmentsCoursesStudents < ApplicationRecord
  belongs_to :assessment
  belongs_to :courses
  belongs_to :student
end
