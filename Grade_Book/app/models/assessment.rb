class Assessment < ApplicationRecord
  belongs_to :course
  belongs_to :section
  belongs_to :student
end
