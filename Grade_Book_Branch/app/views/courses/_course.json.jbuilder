json.extract! course, :id, :name, :number, :dept, :crHr, :created_at, :updated_at
json.url course_url(course, format: :json)
