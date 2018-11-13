require "application_system_test_case"

class AssessmentsTest < ApplicationSystemTestCase
  setup do
    @assessment = assessments(:one)
  end

  test "visiting the index" do
    visit assessments_url
    assert_selector "h1", text: "Assessments"
  end

  test "creating a Assessment" do
    visit assessments_url
    click_on "New Assessment"

    fill_in "Assttype", with: @assessment.AsstType
    fill_in "Actual Score", with: @assessment.actual_Score
    fill_in "Course", with: @assessment.course_id
    fill_in "Expected Score", with: @assessment.expected_Score
    fill_in "Section", with: @assessment.section_id
    fill_in "Student", with: @assessment.student_id
    click_on "Create Assessment"

    assert_text "Assessment was successfully created"
    click_on "Back"
  end

  test "updating a Assessment" do
    visit assessments_url
    click_on "Edit", match: :first

    fill_in "Assttype", with: @assessment.AsstType
    fill_in "Actual Score", with: @assessment.actual_Score
    fill_in "Course", with: @assessment.course_id
    fill_in "Expected Score", with: @assessment.expected_Score
    fill_in "Section", with: @assessment.section_id
    fill_in "Student", with: @assessment.student_id
    click_on "Update Assessment"

    assert_text "Assessment was successfully updated"
    click_on "Back"
  end

  test "destroying a Assessment" do
    visit assessments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assessment was successfully destroyed"
  end
end
