json.extract! assessment, :id, :AsstType, :actual_Score, :expected_Score, :course_id, :section_id, :student_id, :created_at, :updated_at
json.url assessment_url(assessment, format: :json)
