class AssociationRole < ApplicationRecord
  # Database Relationships
  # has_and_belongs_to_many :associations
  has_many :groups
  has_many :roles
  belongs_to :user

  # Data Validations
  validates :association_id, :group_id, :role_id, :user_id, :presence => true
end
