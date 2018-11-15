class Group < ApplicationRecord
  # Database Relationships
  has_many :roles
  belongs_to :association_roles

  # Data Validations
  validates :name, :presence => true, :uniqueness => true, length: { minimum: 2 }
end
