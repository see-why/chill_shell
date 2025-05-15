class Employee < ApplicationRecord
  belongs_to :employer
  has_many :earnings

  validates :name, presence: true
  validates :employee_id, presence: true
end
