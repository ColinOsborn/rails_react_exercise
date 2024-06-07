class Exercise < ApplicationRecord
  # validations
  validates :name, presence: true
  validates :trainings, presence: true
  validates :instruction, presence: true
end
