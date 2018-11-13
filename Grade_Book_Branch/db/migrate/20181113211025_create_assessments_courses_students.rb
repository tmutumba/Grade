class CreateAssessmentsCoursesStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments_courses_students do |t|
      t.references :assessment, foreign_key: true
      t.references :courses, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
