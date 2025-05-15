class Employee < ApplicationRecord
  belongs_to :employer

  validates :name, presence: true
end
