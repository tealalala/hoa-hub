class Group < ApplicationRecord
  # Database Relationships
  has_many :roles
  belongs_to :association_role
  # has_many :roles, through :association_roles


  # Data Validations
  validates :name, :presence => true, :uniqueness => true, length: { minimum: 2 }
end
