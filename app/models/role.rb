class Role < ApplicationRecord
  # Database Relationships
  belongs_to :association_role
  # has_many :groups, through :association_roles

  # Data Validations
  validates :name, :presence => true, :uniqueness => true
end
