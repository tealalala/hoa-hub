class AssociationRole < ApplicationRecord
  # Data Relationships
  has_many :groups
  has_many :roles

  # Data Validations
  validates :association_id, :group_id, :role_id, :user_id, :presence => true
end
