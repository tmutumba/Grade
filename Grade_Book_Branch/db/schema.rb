# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_11_13_211025) do

  create_table "assessments", force: :cascade do |t|
    t.string "AsstType"
    t.decimal "actual_Score"
    t.decimal "expected_Score"
    t.integer "course_id"
    t.integer "section_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_assessments_on_course_id"
    t.index ["section_id"], name: "index_assessments_on_section_id"
    t.index ["student_id"], name: "index_assessments_on_student_id"
  end

  create_table "assessments_courses_students", force: :cascade do |t|
    t.integer "assessment_id"
    t.integer "courses_id"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessment_id"], name: "index_assessments_courses_students_on_assessment_id"
    t.index ["courses_id"], name: "index_assessments_courses_students_on_courses_id"
    t.index ["student_id"], name: "index_assessments_courses_students_on_student_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "dept"
    t.integer "crHr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string "semester"
    t.integer "number"
    t.string "room"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_sections_on_course_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.integer "St_Id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
