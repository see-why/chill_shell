class Employer < ApplicationRecord
  validate :name, presence: true

  has_many :employees
end
