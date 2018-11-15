class Role < ApplicationRecord
  # Database Relationships
  belongs_to :association_role

  # Data Validations
  validates :name, :presence => true, :uniqueness => true
end
