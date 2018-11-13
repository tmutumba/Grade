class CreateAssessments < ActiveRecord::Migration[5.2]
  def change
    create_table :assessments do |t|
      t.string :AsstType
      t.decimal :actual_Score
      t.decimal :expected_Score
      t.references :course, foreign_key: true
      t.references :section, foreign_key: true
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
